import 'package:bloc/bloc.dart';
import 'package:color_generator/core/notifications/notification_service.dart';
import 'package:color_generator/core/use_case/use_case.dart';
import 'package:color_generator/features/color_generator/domain/entities/generated_color.dart';
import 'package:color_generator/features/color_generator/domain/use_cases/clear_history_use_case.dart';
import 'package:color_generator/features/color_generator/domain/use_cases/generate_color_use_case.dart';
import 'package:color_generator/features/color_generator/domain/use_cases/get_history_use_case.dart';
import 'package:color_generator/features/color_generator/domain/use_cases/save_generated_color_use_case.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'color_generator_state.dart';

part 'color_generator_cubit.freezed.dart';

class ColorGeneratorCubit extends Cubit<ColorGeneratorState> {
  final GenerateColorUseCase generateColorUseCase;
  final SaveGeneratedColorUseCase saveGeneratedColorUseCase;
  final GetHistoryUseCase getGeneratedColorsHistoryUseCase;
  final ClearHistoryUseCase clearHistoryUseCase;
  final NotificationService notificationService;

  ColorGeneratorCubit({
    required this.notificationService,
    required this.clearHistoryUseCase,
    required this.getGeneratedColorsHistoryUseCase,
    required this.saveGeneratedColorUseCase,
    required this.generateColorUseCase,
  }) : super(const ColorGeneratorState());

  Future<void> initialize() async {
    final result = await getGeneratedColorsHistoryUseCase(
      const GetHistoryParams(page: 0),
    );

    result.fold(
      (_) => notificationService.showError('Could not fetch history.'),
      (entities) {
        final sortedList = [...entities]
          ..sort((a, b) => b.createdAt.compareTo(a.createdAt));

        final currentColor = sortedList.firstOrNull;

        emit(
          state.copyWith(
            currentColor: currentColor,
            history: sortedList.toSet(),
          ),
        );
      },
    );
  }

  Future<void> generateNewColor() async {
    final result = await generateColorUseCase(NoParams());

    await result.fold(
      (_) {
        notificationService.showError('Could not generate color.');
      },
      (color) async {
        emit(
          state.copyWith(
            currentColor: color,
            history: {color, ...state.history},
          ),
        );

        final saveResult = await saveGeneratedColorUseCase(
          SaveGeneratedColorParams(entity: color),
        );

        saveResult.fold(
          (_) =>
              notificationService.showError('Could not save generated color.'),
          // ignore: no_empty_block
          (_) {},
        );
      },
    );
  }

  Future<void> loadNextHistoryPage() async {
    if (state.isHistoryLoading || state.historyReachedMax) return;

    final int newPage = state.currentHistoryPage + 1;

    emit(state.copyWith(isHistoryLoading: true));

    final result = await getGeneratedColorsHistoryUseCase(
      GetHistoryParams(page: newPage),
    );

    result.fold(
      (_) {
        emit(state.copyWith(isHistoryLoading: false));
        notificationService.showError('Could not fetch history section.');
      },
      (entities) {
        if (entities.isEmpty) {
          emit(
            state.copyWith(
              historyReachedMax: true,
              isHistoryLoading: false,
            ),
          );

          return;
        }

        final List<GeneratedColor> newHistory = [...state.history, ...entities]
          ..sort((a, b) => b.createdAt.compareTo(a.createdAt));

        emit(
          state.copyWith(
            isHistoryLoading: false,
            history: newHistory.toSet(),
            currentHistoryPage: newPage,
          ),
        );
      },
    );
  }

  Future<void> clearHistory() async {
    final result = await clearHistoryUseCase(NoParams());

    result.fold(
      (_) => notificationService.showError('Could not clear history.'),
      (_) {
        emit(const ColorGeneratorState());
      },
    );
  }
}
