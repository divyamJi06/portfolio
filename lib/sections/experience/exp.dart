import 'package:flutter/material.dart';
import 'package:portfolio/models/experience.dart';
import 'package:portfolio/widgets/interncard.dart';

class ExperienceSection extends StatelessWidget {
  const ExperienceSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: expDetails.map((exp) {
          return InternCard(experience: exp,);
        }).toList(),
      ),
    );
  }
}
