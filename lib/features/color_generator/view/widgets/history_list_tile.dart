import 'package:color_generator/core/theme/extensions/build_context_x.dart';
import 'package:color_generator/features/color_generator/domain/entities/generated_color.dart';
import 'package:color_generator/utils/extensions/color_x.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HistoryListTile extends StatelessWidget {
  const HistoryListTile({
    required this.generatedColor,
    required this.index,
    super.key,
  });

  final int index;
  final GeneratedColor generatedColor;

  @override
  Widget build(BuildContext context) {
    final colorScheme = context.theme.colorScheme;

    final Color containerColor = colorScheme.surfaceContainer;
    final Color containerColorVariant = colorScheme.surfaceContainerLowest;

    return ListTile(
      tileColor: index.isOdd ? containerColor : containerColorVariant,
      onTap: () {
        final String hexCode = generatedColor.toColor.toHex;

        Clipboard.setData(ClipboardData(text: hexCode));
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            showCloseIcon: true,
            behavior: SnackBarBehavior.floating,
            dismissDirection: DismissDirection.horizontal,
            content: Text('$hexCode was copied to your clip board'),
          ),
        );
      },
      leading: Container(
        decoration: BoxDecoration(
          color: generatedColor.toColor,
          borderRadius: const BorderRadius.all(
            Radius.circular(2),
          ),
          border: BoxBorder.all(
            color: context.theme.colorScheme.outlineVariant,
          ),
        ),
        width: 30,
        height: 30,
      ),
      title: Text(generatedColor.toColor.toHex),
    );
  }
}
