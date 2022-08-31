import 'package:flutter/material.dart';

class AnimatedIconWidget extends StatefulWidget {
  const AnimatedIconWidget({super.key});

  @override
  State<AnimatedIconWidget> createState() => _AnimatedIconWidgetState();
}

class _AnimatedIconWidgetState extends State<AnimatedIconWidget>
    with TickerProviderStateMixin {
  bool _bool = false;
  late AnimationController _controller;
  @override
  void initState() {
    _controller = AnimationController(
      duration: const Duration(seconds: 1),
      vsync: this,
    );
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: GestureDetector(
        onTap: () {
          if (_bool == false) {
            _controller.forward();
            _bool = !_bool;
          } else {
            _controller.reverse();
            _bool = !_bool;
          }
        },
        child: AnimatedIcon(
          icon: AnimatedIcons.pause_play,
          progress: _controller,
          size: 100,
        ),
      ),
    );
  }
}
