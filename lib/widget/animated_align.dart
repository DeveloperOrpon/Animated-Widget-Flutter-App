import 'package:flutter/material.dart';

class AnimatedAlignWidget extends StatefulWidget {
  const AnimatedAlignWidget({super.key});

  @override
  State<AnimatedAlignWidget> createState() => _AnimatedAlignState();
}

class _AnimatedAlignState extends State<AnimatedAlignWidget> {
  bool selected = false;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(
          () {
            selected = !selected;
          },
        );
      },
      child: Center(
        child: Container(
          width: double.infinity,
          height: 250.0,
          color: Colors.red,
          child: AnimatedAlign(
            alignment: selected ? Alignment.bottomLeft : Alignment.topRight,
            duration: const Duration(seconds: 2),
            curve: Curves.fastOutSlowIn,
            child: const FlutterLogo(size: 50.0),
          ),
        ),
      ),
    );
  }
}
