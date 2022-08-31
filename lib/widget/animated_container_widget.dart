import 'package:flutter/material.dart';

class AnimatedContainerWidget extends StatefulWidget {
  const AnimatedContainerWidget({super.key});

  @override
  State<AnimatedContainerWidget> createState() =>
      _AnimatedContainerWidgetState();
}

class _AnimatedContainerWidgetState extends State<AnimatedContainerWidget> {
  bool selected = false;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selected = !selected;
        });
      },
      child: Center(
        child: AnimatedContainer(
          width: selected ? 400.0 : 300.0,
          height: selected ? 400.0 : 300.0,
          duration: const Duration(seconds: 3),
          color: selected ? Colors.black : Colors.red,
          alignment: selected
              ? AlignmentDirectional.bottomCenter
              : AlignmentDirectional.topCenter,
          curve: Curves.fastOutSlowIn,
          child: const FlutterLogo(size: 50.0),
        ),
      ),
    );
  }
}
