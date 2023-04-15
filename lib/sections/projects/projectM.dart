import 'package:flutter/material.dart';
import 'package:portfolio/models/project.dart';

import '../../widgets/projectcard.dart';

class ProjectSection extends StatelessWidget {
  const ProjectSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('Projects'),
        Text('I love woring on projects'),
        Wrap(
            alignment: WrapAlignment.start,
            crossAxisAlignment: WrapCrossAlignment.start,
            children: projects
                .map<Widget>((project) => ProjectCard(project: project))
                .toList()),
      ],
    );
  }
}
