import 'package:flutter/material.dart';

class AnimatedTextWidget extends StatefulWidget {
  const AnimatedTextWidget({super.key});

  @override
  State<AnimatedTextWidget> createState() => _AnimatedTextWidgetState();
}

class _AnimatedTextWidgetState extends State<AnimatedTextWidget> {
  var _bool = true;
  String text = "Animation Text Before";
  double fontSize = 30;
  Color fontColor = Colors.red;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
            onPressed: () {
              setState(() {
                fontSize = _bool ? 40 : 30;
                fontColor = _bool ? Colors.black : Colors.red;
                text = _bool ? "Animation Text After" : "Animation Text Before";
                _bool = !_bool;
              });
            },
            child: const Text("Animated Button"),
          ),
          SizedBox(
            height: 120,
            child: AnimatedDefaultTextStyle(
              style: TextStyle(
                fontSize: fontSize,
                color: fontColor,
              ),
              duration: const Duration(seconds: 1),
              child: Text(text),
            ),
          )
        ],
      ),
    );
  }
}
