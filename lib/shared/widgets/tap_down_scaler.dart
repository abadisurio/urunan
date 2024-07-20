import 'package:flutter/material.dart';

class TapDownScaller extends StatefulWidget {
  const TapDownScaller({
    required this.child,
    super.key,
  });

  final Widget child;

  @override
  State<TapDownScaller> createState() => _TapDownScallerState();
}

class _TapDownScallerState extends State<TapDownScaller> {
  bool _isTapDown = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onPanDown: (_) {
        setState(() {
          _isTapDown = true;
        });
      },
      onTapCancel: () {
        setState(() {
          _isTapDown = false;
        });
      },
      onTapUp: (_) {
        setState(() {
          _isTapDown = false;
        });
      },
      child: AnimatedScale(
        duration: Durations.short1,
        // curve: Curves.easeOutCirc,
        scale: _isTapDown ? 0.95 : 1,
        child: widget.child,
      ),
    );
  }
}
