import 'package:color_generator/core/widgets/extensions/build_context_x.dart';
import 'package:color_generator/features/color_generator/view/cubit/color_generator_cubit.dart';
import 'package:color_generator/features/color_generator/view/widgets/clear_history_button.dart';
import 'package:color_generator/features/color_generator/view/widgets/history_list_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class GeneratedColorsHistoryScreen extends StatefulWidget {
  const GeneratedColorsHistoryScreen({super.key});

  @override
  State<GeneratedColorsHistoryScreen> createState() =>
      _GeneratedColorsHistoryScreenState();
}

class _GeneratedColorsHistoryScreenState
    extends State<GeneratedColorsHistoryScreen> {
  final scrollController = ScrollController();

  @override
  void initState() {
    super.initState();

    scrollController.addListener(_onScrollListener);
  }

  void _onScrollListener() {
    final currentPixels = scrollController.position.pixels;
    final refreshPixelsTarget = scrollController.position.maxScrollExtent - 200;

    if (currentPixels >= refreshPixelsTarget) {
      final cubit = context.read<ColorGeneratorCubit>();

      cubit.loadNextHistoryPage();
    }
  }

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<ColorGeneratorCubit>();

    return BlocBuilder<ColorGeneratorCubit, ColorGeneratorState>(
      builder: (_, state) {
        return Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: const Text('History'),
            actions: [
              if (state.history.isNotEmpty)
                ClearHistoryButton(onPressed: cubit.clearHistory),
            ],
          ),
          body: state.history.isEmpty
              ? Align(
                  alignment: const Alignment(0, -0.9),
                  child: Text(
                    'Nothing here yet.',
                    style: context.textTheme.labelMedium?.copyWith(
                      color: context.theme.colorScheme.onSurfaceVariant,
                    ),
                  ),
                )
              : ListView.builder(
                  controller: scrollController,
                  itemCount: state.history.length,
                  itemBuilder: (_, index) {
                    final generatedColor = state.history.toList()[index];

                    return HistoryListTile(
                      generatedColor: generatedColor,
                      index: index,
                    );
                  },
                ),
        );
      },
    );
  }

  @override
  void dispose() {
    scrollController.removeListener(_onScrollListener);
    scrollController.dispose();
    super.dispose();
  }
}
