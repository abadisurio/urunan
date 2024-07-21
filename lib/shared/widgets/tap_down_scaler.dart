import 'package:flutter/material.dart';

class TapDownScaller extends StatefulWidget {
  const TapDownScaller({
    required this.child,
    this.onPan,
    super.key,
  });

  final Widget child;

  final void Function({bool isPan})? onPan;

  @override
  State<TapDownScaller> createState() => _TapDownScallerState();
}

class _TapDownScallerState extends State<TapDownScaller> {
  bool _isTapDown = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onPanDown: (_) {
        widget.onPan?.call(isPan: true);
        setState(() {
          _isTapDown = true;
        });
      },
      onPanEnd: (_) {
        widget.onPan?.call(isPan: false);
        setState(() {
          _isTapDown = false;
        });
      },
      onPanCancel: () {
        widget.onPan?.call(isPan: false);
        setState(() {
          _isTapDown = false;
        });
      },
      child: AnimatedScale(
        duration: Durations.short1,
        scale: _isTapDown ? 0.97 : 1,
        child: widget.child,
      ),
    );
  }
}
