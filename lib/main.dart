import 'package:flutter/material.dart';
import 'package:flutter_slider_drawer/flutter_slider_drawer.dart';
import 'package:portfolio/sections/drawer/slider.dart';
import 'package:portfolio/sections/experience/exp.dart';
import 'package:portfolio/sections/projects/projectM.dart';
import 'package:portfolio/sections/tech_stacks/techstacksM.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      darkTheme: ThemeData.dark(),
      home: SliderDrawerD(),
      // home: const SafeArea(
      //   child: Scaffold(
      //       body: SingleChildScrollView(
      //     child: Center(
      //         child: Column(
      //             crossAxisAlignment: CrossAxisAlignment.start,
      //             children: [
      //           // TechStacksSection(),
      //           // ProjectSection(),
      //           // ExperienceSection(),
      //           SliderDrawerD(),
      //         ])),
      //   )),
      // ),
    );
  }
}
