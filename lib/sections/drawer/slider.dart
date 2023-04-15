import 'package:flutter/material.dart';
import 'package:flutter_slider_drawer/flutter_slider_drawer.dart';
import 'package:portfolio/sections/drawer/drawer.dart';

import '../experience/exp.dart';
import '../projects/projectM.dart';
import '../tech_stacks/techstacksM.dart';

class SliderDrawerD extends StatefulWidget {
  const SliderDrawerD({super.key});

  @override
  State<SliderDrawerD> createState() => _SliderDrawerDState();
}

class _SliderDrawerDState extends State<SliderDrawerD> {
  final GlobalKey<SliderDrawerState> _sliderDrawerKey =
      GlobalKey<SliderDrawerState>();
  late String title;
  bool isFolded = true;

  @override
  void initState() {
    title = " ";
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      body: SliderDrawer(
          appBar: SliderAppBar(
              appBarColor: Colors.white,
              title: Text(title,
                  style: const TextStyle(
                      fontSize: 22, fontWeight: FontWeight.w700))),
          key: _sliderDrawerKey,
          sliderOpenSize: 179,
          sliderCloseSize: 0,
          slider: SliderView(
            onItemClick: (title) {
              _sliderDrawerKey.currentState!.closeSlider();
              setState(() {
                this.title = title;
              });
            },
          ),
          child: SingleChildScrollView(
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.start,
              // crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TechStacksSection(),
                ProjectSection(),
                ExperienceSection(),
              ],
            ),
          )),
    );
  }
}
