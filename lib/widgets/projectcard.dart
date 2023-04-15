import 'package:flutter/material.dart';
import 'package:portfolio/models/project.dart';
import 'package:portfolio/widgets/customchips.dart';

import '../models/chip.dart';

class ProjectCard extends StatelessWidget {
  const ProjectCard({required this.project, super.key});
  final Project project;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: 340,
        decoration: BoxDecoration(
            color: Colors.black, borderRadius: BorderRadius.circular(20)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            LayoutBuilder(builder: (context, constraints) {
              return ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.network(
                  'https://picsum.photos/250',
                  fit: BoxFit.fill,
                  width: constraints.maxWidth,
                  height: 200,
                ),
              );
            }),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Text(
                    project.title,
                    style: TextStyle(color: Colors.red),
                    textAlign: TextAlign.justify,
                  ),
                  // Text(project.desc),
                  SizedBox(
                    height: 10,
                  ),
                  Wrap(
                    spacing: 10,
                    runSpacing: 10,
                    // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      for (Links link in project.links)
                        CustomChips(
                          links: link,
                          bgColor: Colors.green[300],
                          fontColor: Colors.black,
                        ),
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}
