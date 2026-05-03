import 'package:flutter/material.dart';

class MotionTokens extends ThemeExtension<MotionTokens> {
  final Duration durationExtraShort;
  final Duration durationShort;
  final Duration durationMediumShort;
  final Duration durationMedium;
  final Duration durationMediumLong;
  final Duration durationLong;
  final Duration durationExtraLong;
  final Duration durationUltra;
  final Duration durationIndeterminate;

  static const Duration defaultDurationIndeterminate = Duration(
    milliseconds: 1500,
  );

  const MotionTokens({
    required this.durationExtraShort,
    required this.durationShort,
    required this.durationMediumShort,
    required this.durationMedium,
    required this.durationMediumLong,
    required this.durationLong,
    required this.durationExtraLong,
    required this.durationUltra,

    this.durationIndeterminate = defaultDurationIndeterminate,
  });

  factory MotionTokens.regular() {
    return const MotionTokens(
      durationExtraShort: Duration(milliseconds: 140),
      durationShort: Duration(milliseconds: 220),
      durationMediumShort: Duration(milliseconds: 300),
      durationMedium: Duration(milliseconds: 400),
      durationMediumLong: Duration(milliseconds: 600),
      durationLong: Duration(milliseconds: 800),
      durationExtraLong: Duration(milliseconds: 1000),
      durationUltra: Duration(milliseconds: 1400),
    );
  }

  Duration getDuration(MotionDuration type) {
    return switch (type) {
      MotionDuration.extraShort => durationExtraShort,
      MotionDuration.short => durationShort,
      MotionDuration.mediumShort => durationMediumShort,
      MotionDuration.medium => durationMedium,
      MotionDuration.mediumLong => durationMediumLong,
      MotionDuration.long => durationLong,
      MotionDuration.extraLong => durationExtraLong,
      MotionDuration.ultra => durationUltra,
      MotionDuration.indeterminate => durationIndeterminate,
    };
  }

  @override
  MotionTokens lerp(ThemeExtension<MotionTokens> other, double t) {
    if (other is! MotionTokens) return this;

    const double half = 0.5;

    Duration lerpDuration(Duration a, Duration b, double t) {
      return t < half ? a : b;
    }

    return MotionTokens(
      durationExtraShort: lerpDuration(
        durationExtraShort,
        other.durationExtraShort,
        t,
      ),
      durationShort: lerpDuration(durationShort, other.durationShort, t),
      durationMediumShort: lerpDuration(
        durationMediumShort,
        other.durationMediumShort,
        t,
      ),
      durationMedium: lerpDuration(durationMedium, other.durationMedium, t),
      durationMediumLong: lerpDuration(
        durationMediumLong,
        other.durationMediumLong,
        t,
      ),
      durationLong: lerpDuration(durationLong, other.durationLong, t),
      durationExtraLong: lerpDuration(
        durationExtraLong,
        other.durationExtraLong,
        t,
      ),
      durationUltra: lerpDuration(durationUltra, other.durationUltra, t),
      durationIndeterminate: lerpDuration(
        durationIndeterminate,
        other.durationIndeterminate,
        t,
      ),
    );
  }

  @override
  MotionTokens copyWith({
    Duration? durationExtraShort,
    Duration? durationShort,
    Duration? durationMediumShort,
    Duration? durationMedium,
    Duration? durationMediumLong,
    Duration? durationLong,
    Duration? durationExtraLong,
    Duration? durationUltra,
    Duration? durationIndeterminate,
  }) {
    return MotionTokens(
      durationExtraShort: durationExtraShort ?? this.durationExtraShort,
      durationShort: durationShort ?? this.durationShort,
      durationMediumShort: durationMediumShort ?? this.durationMediumShort,
      durationMedium: durationMedium ?? this.durationMedium,
      durationMediumLong: durationMediumLong ?? this.durationMediumLong,
      durationLong: durationLong ?? this.durationLong,
      durationExtraLong: durationExtraLong ?? this.durationExtraLong,
      durationUltra: durationUltra ?? this.durationUltra,
      durationIndeterminate:
          durationIndeterminate ?? this.durationIndeterminate,
    );
  }
}

enum MotionDuration {
  extraShort,
  short,
  mediumShort,
  medium,
  mediumLong,
  long,
  extraLong,
  ultra,
  indeterminate,
}
