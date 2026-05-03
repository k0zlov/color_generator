import 'dart:ui';

import 'package:flutter/material.dart';

class SpaceTokens extends ThemeExtension<SpaceTokens> {
  final double none;
  final double extraSmall;
  final double small;
  final double mediumSmall;
  final double medium;
  final double mediumLarge;
  final double large;
  final double extraLarge;
  final double huge;

  const SpaceTokens({
    required this.none,
    required this.extraSmall,
    required this.small,
    required this.mediumSmall,
    required this.medium,
    required this.mediumLarge,
    required this.large,
    required this.extraLarge,
    required this.huge,
  });

  factory SpaceTokens.regular() {
    return const SpaceTokens(
      none: 0,
      extraSmall: 4,
      small: 8,
      mediumSmall: 12,
      medium: 16,
      mediumLarge: 20,
      large: 24,
      extraLarge: 32,
      huge: 48,
    );
  }

  double getSpaceFromSize(SpaceSize size) {
    return switch (size) {
      .none => none,
      .extraSmall => extraSmall,
      .small => small,
      .mediumSmall => mediumSmall,
      .medium => medium,
      .mediumLarge => mediumLarge,
      .large => large,
      .extraLarge => extraLarge,
      .huge => huge,
    };
  }

  @override
  SpaceTokens copyWith({
    double? none,
    double? extraSmall,
    double? small,
    double? mediumSmall,
    double? medium,
    double? mediumLarge,
    double? large,
    double? extraLarge,
    double? huge,
  }) {
    return SpaceTokens(
      none: none ?? this.none,
      extraSmall: extraSmall ?? this.extraSmall,
      small: small ?? this.small,
      mediumSmall: mediumSmall ?? this.mediumSmall,
      medium: medium ?? this.medium,
      mediumLarge: mediumLarge ?? this.mediumLarge,
      large: large ?? this.large,
      extraLarge: extraLarge ?? this.extraLarge,
      huge: huge ?? this.huge,
    );
  }

  @override
  SpaceTokens lerp(ThemeExtension<SpaceTokens>? other, double t) {
    if (other is! SpaceTokens) return this;

    return SpaceTokens(
      none: lerpDouble(none, other.none, t) ?? none,
      extraSmall: lerpDouble(extraSmall, other.extraSmall, t) ?? extraSmall,
      small: lerpDouble(small, other.small, t) ?? small,
      mediumSmall: lerpDouble(mediumSmall, other.mediumSmall, t) ?? mediumSmall,
      medium: lerpDouble(medium, other.medium, t) ?? medium,
      mediumLarge: lerpDouble(mediumLarge, other.mediumLarge, t) ?? mediumLarge,
      large: lerpDouble(large, other.large, t) ?? large,
      extraLarge: lerpDouble(extraLarge, other.extraLarge, t) ?? extraLarge,
      huge: lerpDouble(huge, other.huge, t) ?? huge,
    );
  }
}

enum SpaceSize {
  none,
  extraSmall,
  small,
  mediumSmall,
  medium,
  mediumLarge,
  large,
  extraLarge,
  huge,
}
