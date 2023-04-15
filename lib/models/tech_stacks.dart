import 'package:flutter/material.dart';
import 'package:portfolio/models/project.dart';

import 'chip.dart';

class TechStacks {
  final String subheading;
  final List<Links> links;

  TechStacks({required this.subheading, required this.links});
}

List<TechStacks> techstacks = [
  TechStacks(subheading: "Mobile Development", links: [
    Links(media: "Flutter", logo: ""),
    Links(media: "Dart", logo: ""),
  ]),
  TechStacks(subheading: "Web Development", links: [
    Links(media: "HTML", logo: ""),
    Links(media: "CSS", logo: ""),
    Links(media: "JavaScript", logo: ""),
    Links(media: "React", logo: ""),
  ]),
  TechStacks(subheading: "DataBase", links: [
    Links(media: "Mongo", logo: ""),
    Links(media: "FireBase", logo: ""),
    Links(media: "PostGres", logo: ""),
    Links(media: "React", logo: ""),
  ]),
];
