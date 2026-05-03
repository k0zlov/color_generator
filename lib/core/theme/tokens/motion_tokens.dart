import 'package:flutter/material.dart';

class MotionTokens extends ThemeExtension<MotionTokens> {
  final Duration durationShort;

  const MotionTokens({
    required this.durationShort,
  });

  factory MotionTokens.regular() {
    return const MotionTokens(
      durationShort: Duration(milliseconds: 220),
    );
  }

  @override
  MotionTokens lerp(ThemeExtension<MotionTokens> other, double t) {
    if (other is! MotionTokens) return this;

    const double half = 0.5;

    Duration lerpDuration(Duration a, Duration b, double t) {
      return t < half ? a : b;
    }

    return MotionTokens(
      durationShort: lerpDuration(durationShort, other.durationShort, t),
    );
  }

  @override
  MotionTokens copyWith({
    Duration? durationShort,
  }) {
    return MotionTokens(
      durationShort: durationShort ?? this.durationShort,
    );
  }
}
