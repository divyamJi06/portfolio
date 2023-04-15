import 'package:flutter/material.dart';

import '../models/chip.dart';

class CustomChips extends StatelessWidget {
  const CustomChips(
      {required this.links, super.key, this.bgColor, this.fontColor});
  final Links links;
  final Color? bgColor;
  final Color? fontColor;
  @override
  Widget build(BuildContext context) {
    return Container(
        width: 100,
        // height: ,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: bgColor ?? Color.fromARGB(0, 0, 138, 58)),
        child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.details),
              SizedBox(width: 3),
              Text(
                links.media,
                style: TextStyle(color: fontColor ?? Colors.green[300]),
              ),
            ]));
    // return FloatingActionButton.extended(
    //   shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
    //   elevation: 23,
    //   backgroundColor: bgColor ?? Colors.green[300],
    //   onPressed: () {
    //     // TODO: Add link to the button
    //   },
    //   label: Text(
    //     links.media,
    //     style: TextStyle(color: fontColor ?? Colors.green[300]),
    //   ),
    //   // icon: CircleAvatar(
    //   //   backgroundColor: Colors.transparent,
    //   //   backgroundImage: NetworkImage(links.logo),
    //   //   // Image.network("https://mhmz.dev/images/projects/devfolio.png")),
    //   // )
    //   icon: Icon(Icons.details),
    // );
  }

  chip() {
    return Material(
      elevation: 10,
      child: Container(
          child: Row(children: [Icon(Icons.details), Text(links.media)])),
    );
  }
}
