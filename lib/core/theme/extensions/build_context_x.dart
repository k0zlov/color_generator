import 'package:color_generator/core/theme/tokens/motion_tokens.dart';
import 'package:color_generator/core/theme/tokens/space_tokens.dart';
import 'package:flutter/material.dart';

extension BuildContextX on BuildContext {
  ThemeData get theme => Theme.of(this);

  TextTheme get textTheme => theme.textTheme;

  ColorScheme get colorScheme => theme.colorScheme;

  MediaQueryData get mediaQuery => MediaQuery.of(this);

  MotionTokens get motion =>
      theme.extension<MotionTokens>() ?? MotionTokens.regular();

  SpaceTokens get space =>
      theme.extension<SpaceTokens>() ?? SpaceTokens.regular();
}
