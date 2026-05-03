import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class LottieIcon extends StatefulWidget {
  const LottieIcon(
    this.data, {
    required this.animate,
    this.color,
    this.size,
    super.key,
  });

  final LottieIconData data;
  final bool animate;
  final double? size;
  final Color? color;

  @override
  State<LottieIcon> createState() => _LottieIconState();
}

class _LottieIconState extends State<LottieIcon>
    with SingleTickerProviderStateMixin {
  AnimationController? _controller;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    final iconTheme = IconTheme.of(context);

    final effectiveSize = widget.size ?? iconTheme.size ?? 22;

    final effectiveColor = widget.color ?? iconTheme.color;

    return LottieBuilder.asset(
      widget.data.path,
      renderCache: RenderCache.drawingCommands,
      controller: _controller,
      width: effectiveSize,
      height: effectiveSize,
      delegates: LottieDelegates(
        values: effectiveColor == null
            ? null
            : [
                ValueDelegate.color(['**'], value: effectiveColor),
                ValueDelegate.strokeColor(['**'], value: effectiveColor),
              ],
      ),
      onLoaded: (composition) {
        _controller?.duration = composition.duration;

        if (widget.animate) {
          _controller?.forward();
        }
      },
    );
  }

  @override
  void didUpdateWidget(covariant LottieIcon oldWidget) {
    super.didUpdateWidget(oldWidget);

    final bool shouldAnimate =
        oldWidget.animate != widget.animate && widget.animate;

    if (!shouldAnimate) return;

    if (_controller == null || (_controller?.isAnimating ?? false)) return;

    _controller?.reset();
    _controller?.forward();
  }
}

class LottieIconData {
  final String path;

  const LottieIconData({required this.path});
}
