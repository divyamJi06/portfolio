import 'package:portfolio/models/chip.dart';

class Project {
  final String image;
  final String title;
  final String desc;
  final List<Links> links;

  Project(this.desc,
      {required this.image, required this.title, required this.links});
}

List<Project> projects = [
  // create a dummy project with Project class
  Project(
      "A Flutter Web App for Developers to showcase their projects and blogs.",
      // image: "https://mhmz.dev/images/projects/devfolio.png",
      image: "https://mhmz.dev/images/projects/quran.png",
      title: "Devfolio",
      links: [
        Links(
            media: "Github",
            logo: "https://mhmz.dev/images/projects/quran.png",
            link: "https:example.com"),
        Links(
            media: "Website",
            logo: "https://mhmz.dev/images/projects/quran.png",
            link: "https:example.com"),
      ]),
  Project(
      "A Flutter Web App for Developers to showcase their projects and blogs.",
      // image: "https://mhmz.dev/images/projects/quran.png",
      image: "https://mhmz.dev/images/projects/quran.png",
      title: "Devfolio",
      links: [
        Links(
            media: "Github",
            logo: "https://mhmz.dev/images/tech/html.svg",
            link: "https:example.com"),
        Links(
            media: "Github",
            logo: "https://mhmz.dev/images/tech/html.svg",
            link: "https:example.com"),
        Links(
            media: "Website",
            logo: "https://mhmz.dev/images/tech/html.svg",
            link: "https:example.com"),
      ]),
];
