import 'package:color_generator/core/theme/extensions/build_context_x.dart';
import 'package:color_generator/features/color_generator/domain/entities/generated_color.dart';
import 'package:color_generator/features/color_generator/view/cubit/color_generator_cubit.dart';
import 'package:color_generator/features/color_generator/view/widgets/clear_history_button.dart';
import 'package:color_generator/features/color_generator/view/widgets/history_list_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class GeneratedColorsHistoryScreen extends StatefulWidget {
  const GeneratedColorsHistoryScreen({required this.cubit, super.key});

  final ColorGeneratorCubit cubit;

  @override
  State<GeneratedColorsHistoryScreen> createState() =>
      _GeneratedColorsHistoryScreenState();
}

class _GeneratedColorsHistoryScreenState
    extends State<GeneratedColorsHistoryScreen> {
  final ScrollController _scrollController = ScrollController();

  static const double _paginationOffsetThreshold = 200.0;

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_onScrollListener);
  }

  void _onScrollListener() {
    if (_scrollController.hasClients == false) return;

    final currentPixels = _scrollController.position.pixels;
    final refreshPixelsTarget =
        _scrollController.position.maxScrollExtent - _paginationOffsetThreshold;

    if (currentPixels >= refreshPixelsTarget) {
      context.read<ColorGeneratorCubit>().loadNextHistoryPage();
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocSelector<
      ColorGeneratorCubit,
      ColorGeneratorState,
      List<GeneratedColor>
    >(
      selector: (state) => state.history,
      builder: (_, List<GeneratedColor> history) {
        final bool isHistoryEmpty = history.isEmpty;

        return Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: const Text('History'),
            actions: [
              if (isHistoryEmpty == false)
                ClearHistoryButton(onPressed: widget.cubit.clearHistory),
            ],
          ),
          body: isHistoryEmpty
              ? const _EmptyHistoryView()
              : _HistoryListView(
                  scrollController: _scrollController,
                  history: history,
                ),
        );
      },
    );
  }

  @override
  void dispose() {
    _scrollController.removeListener(_onScrollListener);
    _scrollController.dispose();
    super.dispose();
  }
}

class _EmptyHistoryView extends StatelessWidget {
  const _EmptyHistoryView();

  static const double _alignmentY = -0.9;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: const Alignment(0, _alignmentY),
      child: Text(
        'Nothing here yet.',
        style: context.typography.labelMedium.copyWith(
          color: context.theme.colorScheme.onSurfaceVariant,
        ),
      ),
    );
  }
}

class _HistoryListView extends StatelessWidget {
  const _HistoryListView({
    required this.history,
    required this.scrollController,
  });

  final List<GeneratedColor> history;
  final ScrollController scrollController;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      controller: scrollController,
      itemCount: history.length,
      itemBuilder: (_, index) {
        final generatedColor = history[index];

        return HistoryListTile(
          generatedColor: generatedColor,
          index: index,
        );
      },
    );
  }
}
