part of 'color_generator_cubit.dart';

@freezed
abstract class ColorGeneratorState with _$ColorGeneratorState {
  const factory ColorGeneratorState({
    @Default(0) int currentHistoryPage,
    GeneratedColor? currentColor,
    @Default(false) bool isHistoryLoading,
    @Default(false) bool historyReachedMax,
    @Default({}) Set<GeneratedColor> history,
  }) = _ColorGeneratorState;
}
