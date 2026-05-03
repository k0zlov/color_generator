import 'package:color_generator/core/theme/tokens/motion_tokens.dart';
import 'package:color_generator/core/theme/tokens/typography_tokens.dart';
import 'package:flutter/material.dart';

extension BuildContextX on BuildContext {
  T getThemeExtension<T>() {
    final T? extension = theme.extension<T>();

    if (extension == null) {
      throw Exception('Could not find extension $T in Theme.of(context)');
    }

    return extension;
  }

  ThemeData get theme => Theme.of(this);

  ColorScheme get colorScheme => theme.colorScheme;

  MediaQueryData get mediaQuery => MediaQuery.of(this);

  MotionTokens get motion => getThemeExtension();

  TypographyTokens get typography => getThemeExtension();
}
