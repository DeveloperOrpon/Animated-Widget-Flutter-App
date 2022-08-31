import 'package:flutter/material.dart';

class AnimatedOpacityWidget extends StatefulWidget {
  const AnimatedOpacityWidget({super.key});

  @override
  State<AnimatedOpacityWidget> createState() => _AnimatedOpacityWidgetState();
}

class _AnimatedOpacityWidgetState extends State<AnimatedOpacityWidget> {
  double opacity = 1.0;
  double padvalue = 10.0;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          AnimatedOpacity(
            opacity: opacity,
            duration: const Duration(seconds: 1),
            child: const FlutterLogo(size: 100),
          ),
          ElevatedButton(
            child: const Text("Press Opacity"),
            onPressed: () {
              setState(() {
                opacity = opacity == 0 ? 1 : 0;
              });
            },
          ),
          ElevatedButton(
            child: const Text("Press Animated Padding"),
            onPressed: () {
              setState(() {
                padvalue = padvalue == 10 ? 100 : 10;
              });
            },
          ),
          AnimatedPadding(
            padding: EdgeInsets.all(padvalue),
            duration: const Duration(seconds: 2),
            curve: Curves.fastOutSlowIn,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 4,
              color: Colors.amberAccent,
            ),
          )
        ],
      ),
    );
  }
}
