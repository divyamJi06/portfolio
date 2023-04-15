import 'package:flutter/material.dart';
import 'package:portfolio/models/tech_stacks.dart';
import 'package:portfolio/widgets/customchips.dart';

class TechStacksSection extends StatelessWidget {
  const TechStacksSection({super.key});

  @override
  Widget build(BuildContext context) {
    // techstacks.map((e) => )
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Tech Stacks"),
          SizedBox(height: 10),
          Text(
              "dummy text of 200 characters          dummy          dummy          dummy text of 200 characters"),
          SizedBox(height: 10),
          Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: techstacks
                  .map((tech) => Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(tech.subheading),
                          SizedBox(height: 10),
                          Wrap(
                            runSpacing: 10,
                            alignment: WrapAlignment.start,
                            spacing: 10, textDirection: TextDirection.ltr,
                            // crossAxisAlignment: WrapCrossAlignment.start,
                            // mainAxisAlignment: MainAxisAlignment.start,
                            // mainAxisSize: MainAxisSize.min,
                            children: tech.links
                                .map<Widget>(
                                  (link) => CustomChips(
                                    links: link,
                                    bgColor: Colors.black,
                                    fontColor: Colors.green[300],
                                  ),
                                )
                                .toList(),
                          ),
                          SizedBox(height: 10),
                        ],
                      ))
                  .toList()),
        ],
      ),
    );
  }
}
