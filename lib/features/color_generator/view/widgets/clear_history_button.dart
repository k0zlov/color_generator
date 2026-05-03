import 'package:color_generator/core/theme/extensions/build_context_x.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ClearHistoryButton extends StatelessWidget {
  const ClearHistoryButton({required this.onPressed, super.key});

  final VoidCallback onPressed;

  void _showConfirmationDialog(BuildContext context) {
    final ColorScheme colorScheme = context.colorScheme;

    showDialog<void>(
      context: context,
      builder: (BuildContext dialogContext) {
        return AlertDialog(
          actionsAlignment: MainAxisAlignment.spaceAround,
          actionsPadding: EdgeInsets.zero,
          content: const Text('Delete generated colors history?'),
          actions: [
            TextButton(
              onPressed: () => dialogContext.pop(),
              child: const Text('No'),
            ),
            TextButton(
              onPressed: () {
                dialogContext.pop();
                onPressed();
              },
              style: ButtonStyle(
                overlayColor: WidgetStatePropertyAll(
                  colorScheme.errorContainer,
                ),
              ),
              child: Text(
                'Yes',
                style: TextStyle(color: colorScheme.error),
              ),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final ColorScheme colorScheme = context.colorScheme;

    return IconButton(
      onPressed: () => _showConfirmationDialog(context),
      icon: Icon(Icons.delete, color: colorScheme.error),
    );
  }
}
