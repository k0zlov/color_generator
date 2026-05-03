import 'package:color_generator/core/theme/extensions/build_context_x.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ClearHistoryButton extends StatelessWidget {
  const ClearHistoryButton({required this.onPressed, super.key});

  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    final colorScheme = context.theme.colorScheme;

    return IconButton(
      onPressed: () {
        showDialog(
          context: context,
          builder: (context) {
            return AlertDialog(
              actionsAlignment: MainAxisAlignment.spaceAround,
              actionsPadding: EdgeInsets.zero,
              content: const Text('Delete generated colors history?'),
              actions: [
                TextButton(
                  onPressed: () => context.pop(),
                  child: const Text('No'),
                ),
                TextButton(
                  onPressed: () {
                    context.pop();
                    onPressed();
                  },
                  style: ButtonStyle(
                    overlayColor: WidgetStatePropertyAll(
                      colorScheme.errorContainer,
                    ),
                  ),
                  child: DefaultTextStyle.merge(
                    style: TextStyle(color: colorScheme.error),
                    child: const Text('Yes'),
                  ),
                ),
              ],
            );
          },
        );
      },
      icon: Icon(Icons.delete, color: colorScheme.error),
    );
  }
}
