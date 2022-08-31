import 'package:flutter/material.dart';

import 'widget/animatedIcon_widget.dart';
import 'widget/animated_align.dart';
import 'widget/animated_container_widget.dart';
import 'widget/animated_crossfade_widget.dart';
import 'widget/animated_list_widget.dart';
import 'widget/animated_modal_barrier_widget.dart';
import 'widget/animated_opacity_widget.dart';
import 'widget/animated_switcher_widget.dart';
import 'widget/animated_text_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key, required this.title});
  final String title;
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        centerTitle: true,
      ),
      body: const AnimatedIconWidget(),
    );
  }
}
