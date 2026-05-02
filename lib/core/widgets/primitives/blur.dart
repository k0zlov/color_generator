import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Blur extends StatelessWidget {
  const Blur({
    required this.child,
    this.sigmaX,
    this.sigmaY,
    super.key,
    this.borderRadius,
  });

  final Widget child;

  final double? sigmaX;
  final double? sigmaY;

  final BorderRadius? borderRadius;

  @override
  Widget build(BuildContext context) {
    final double effectiveSigmaX = sigmaX ?? 15;
    final double effectiveSigmaY = sigmaY ?? 15;

    return ClipRRect(
      borderRadius: borderRadius ?? BorderRadius.zero,
      child: BackdropFilter(
        filter: ImageFilter.blur(
          sigmaX: effectiveSigmaX,
          sigmaY: effectiveSigmaY,
        ),
        child: child,
      ),
    );
  }
}
