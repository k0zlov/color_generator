import 'package:color_generator/core/theme/extensions/build_context_x.dart';
import 'package:color_generator/features/color_generator/domain/entities/generated_color.dart';
import 'package:flex_color_scheme/flex_color_scheme.dart';
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

  static const double _colorPreviewSize = 30.0;
  static const double _colorPreviewBorderRadius = 2.0;

  void _handleTap(BuildContext context, String hexCode) {
    _copyToClipboard(hexCode);
    _showSnackBar(context, hexCode);
  }

  void _copyToClipboard(String hexCode) {
    Clipboard.setData(ClipboardData(text: hexCode));
  }

  void _showSnackBar(BuildContext context, String hexCode) {
    ScaffoldMessenger.of(context)
      ..hideCurrentSnackBar()
      ..showSnackBar(
        SnackBar(
          showCloseIcon: true,
          behavior: SnackBarBehavior.floating,
          dismissDirection: DismissDirection.horizontal,
          content: Text('$hexCode was copied to your clipboard'),
        ),
      );
  }

  @override
  Widget build(BuildContext context) {
    final ColorScheme colorScheme = context.theme.colorScheme;

    final Color containerColor = colorScheme.surfaceContainer;
    final Color containerColorVariant = colorScheme.surfaceContainerLowest;

    final String hexCode = generatedColor.color.hexCode;

    return ListTile(
      tileColor: index.isOdd ? containerColor : containerColorVariant,
      onTap: () => _handleTap(context, hexCode),
      leading: Container(
        decoration: BoxDecoration(
          color: generatedColor.color,
          borderRadius: const BorderRadius.all(
            Radius.circular(_colorPreviewBorderRadius),
          ),
          border: BoxBorder.all(
            color: context.theme.colorScheme.outlineVariant,
          ),
        ),
        width: _colorPreviewSize,
        height: _colorPreviewSize,
      ),
      title: Text('#$hexCode'),
    );
  }
}
