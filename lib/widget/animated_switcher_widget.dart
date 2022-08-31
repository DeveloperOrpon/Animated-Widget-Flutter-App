import 'package:flutter/material.dart';

class AnimatedSwitcherWidget extends StatefulWidget {
  const AnimatedSwitcherWidget({super.key});

  @override
  State<AnimatedSwitcherWidget> createState() => _AnimatedSwitcherWidgetState();
}

class _AnimatedSwitcherWidgetState extends State<AnimatedSwitcherWidget> {
  int _count = 0;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          AnimatedSwitcher(
            duration: const Duration(milliseconds: 400),
            child: Text(
              "$_count S",
              style: const TextStyle(fontSize: 25),
              key: ValueKey(_count),
            ),
            transitionBuilder: (child, animation) {
              return ScaleTransition(
                scale: animation,
                child: child,
              );

              //slide transition
              // final offsetAnimation = Tween<Offset>(
              //   begin: const Offset(0.0, 0.0),
              //   end: const Offset(0.0, -1.0),
              // ).animate(animation);
              // return SlideTransition(
              //   position: offsetAnimation,
              //   child: child,
              // );

              // final offsetAnimation = TweenSequence([
              //   TweenSequenceItem(
              //       tween: Tween<Offset>(
              //           begin: const Offset(0.0, 1.0),
              //           end: const Offset(0.0, 1.0)),
              //       weight: 1),
              //   TweenSequenceItem(
              //       tween: ConstantTween(const Offset(0.0, 0.0)), weight: 3),
              //   TweenSequenceItem(
              //       tween: Tween<Offset>(
              //           begin: const Offset(0.0, 0.0),
              //           end: const Offset(0.0, -1.0)),
              //       weight: 1)
              // ]).animate(animation);
              // return ClipRect(
              //   child: SlideTransition(
              //     position: offsetAnimation,
              //     child: child,
              //   ),
              // );
            },
          ),
          ElevatedButton(
            onPressed: () {
              setState(() {
                ++_count;
              });
            },
            child: const Text("Count"),
          )
        ],
      ),
    );
  }
}
