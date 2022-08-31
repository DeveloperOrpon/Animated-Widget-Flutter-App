import 'package:flutter/material.dart';

class AnimatedModalBarrierWidget extends StatefulWidget {
  const AnimatedModalBarrierWidget({super.key});

  @override
  State<AnimatedModalBarrierWidget> createState() =>
      _AnimatedModalBarrierWidgetState();
}

class _AnimatedModalBarrierWidgetState extends State<AnimatedModalBarrierWidget>
    with SingleTickerProviderStateMixin {
  bool isPressed = false;
  late Widget _animatedModalBarrir;
  late AnimationController _controller;
  late Animation<Color?> _animationColor;

  @override
  void initState() {
    ColorTween colorTween = ColorTween(
        begin: Colors.orangeAccent.withOpacity(0.5),
        end: Colors.blueGrey.withOpacity(.5));
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 3),
    );
    _animationColor = colorTween.animate(_controller);
    _animatedModalBarrir = AnimatedModalBarrier(
      color: _animationColor,
      dismissible: true,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              height: 100,
              width: 250,
              child: Stack(
                alignment: AlignmentDirectional.center,
                children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.orangeAccent,
                    ),
                    onPressed: () {
                      setState(() {
                        isPressed = true;
                      });
                      _controller.reset();
                      _controller.forward();
                      Future.delayed(
                        const Duration(seconds: 3),
                        () {
                          setState(() {
                            isPressed = false;
                          });
                        },
                      );
                    },
                    child: const Text("Press"),
                  ),
                  if (isPressed) _animatedModalBarrir
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
