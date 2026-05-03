import 'package:flutter/material.dart';

class TypographyTokens extends ThemeExtension<TypographyTokens> {
  final TextStyle titleLarge;
  final TextStyle labelLarge;
  final TextStyle labelMedium;

  const TypographyTokens({
    required this.labelMedium,
    required this.labelLarge,
    required this.titleLarge,
  });

  factory TypographyTokens.regular() {
    return const TypographyTokens(
      titleLarge: TextStyle(
        fontSize: 22,
        fontWeight: FontWeight.w400,
      ),
      labelLarge: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w500,
        // wordSpacing: 0.1,
      ),
      labelMedium: TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.w500,
      ),
    );
  }

  @override
  TypographyTokens copyWith({
    TextStyle? titleLarge,
    TextStyle? labelLarge,
    TextStyle? labelMedium,
  }) {
    return TypographyTokens(
      titleLarge: titleLarge ?? this.titleLarge,
      labelLarge: labelLarge ?? this.labelLarge,
      labelMedium: labelMedium ?? this.labelMedium,
    );
  }

  @override
  TypographyTokens lerp(
    ThemeExtension<TypographyTokens> other,
    double t,
  ) {
    if (other is TypographyTokens) {
      return TypographyTokens(
        titleLarge:
            TextStyle.lerp(titleLarge, other.titleLarge, t) ?? titleLarge,
        labelLarge:
            TextStyle.lerp(labelLarge, other.labelLarge, t) ?? labelLarge,
        labelMedium:
            TextStyle.lerp(labelMedium, other.labelMedium, t) ?? labelMedium,
      );
    }

    return this;
  }
}
