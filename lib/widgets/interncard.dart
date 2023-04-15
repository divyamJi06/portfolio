import 'package:flutter/material.dart';
import 'package:bulleted_list/bulleted_list.dart';
import 'package:portfolio/models/experience.dart';

final List<String> resp = [
  "Learned real-time location real-time location real-time location alerts using firebase real-time db. ",
  'Lorem12',
  'Dart',
  "Learned real-time location alerts. Learned real-time location alerts. Learned real-time location alerts. Learned real-time location alerts. Learned real-time location alerts. Learned real-time location alerts. Learned real-time location alerts using firebase real-time db. Learned real-time location alerts using firebase real-time db",
  'Firebase'
];

class InternCard extends StatelessWidget {
  InternCard({super.key, required this.experience});
  final Experience experience;

  final List tech = ['Flutter', 'Dart', 'Firebase'];
  String ensureDouble(String s) {
    // switch case to convert into month name
    switch (s) {
      case "1":
        s = "Jan";
        break;
      case "2":
        s = "Feb";
        break;
      case "3":
        s = "Mar";
        break;
      case "4":
        s = "Apr";
        break;
      case "5":
        s = "May";
        break;
      case "6":
        s = "Jun";
        break;
      case "7":
        s = "Jul";
        break;
      case "8":
        s = "Aug";
        break;
      case "9":
        s = "Sep";
        break;
      case "10":
        s = "Oct";
        break;
      case "11":
        s = "Nov";
        break;
      case "12":
        s = "Dec";
        break;
    }
    // if (s.length == 1) {
    //   return "0$s";
    // }
    return s;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Container(
        // height: 200,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 20.0),
          child: Wrap(children: [
            // SizedBox(width: MediaQuery.of(context).size.width > 560 ? 100 : 20),
            Container(
              // width: 200,
              width: MediaQuery.of(context).size.width < 500
                  ? MediaQuery.of(context).size.width
                  : 200,
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  // crossAxisAlignment: CrossAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(height: 10),
                    Text(
                      "${experience.companyName}",
                      style: TextStyle(
                        color: Colors.green[300],
                        fontSize: 30,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 15),
                    Text(
                      "${experience.position}",
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 15,
                      ),
                    ),
                    SizedBox(height: 5),
                    Text(
                      "${ensureDouble(experience.startDate.month.toString())}, ${experience.startDate.year} - ${ensureDouble(experience.endDate.month.toString())}, ${experience.endDate.year}",
                      style: TextStyle(
                        fontSize: 10,
                        color: Colors.grey,
                      ),
                    ),
                    SizedBox(height: 15),
                    Text(
                      "Technologies",
                      style: TextStyle(
                        fontSize: 10,
                        color: Colors.grey,
                      ),
                    ),
                    // Text(),
                    SizedBox(height: 5),
                    BulletedList(
                      listItems: experience.technologies,
                      listOrder: ListOrder.ordered,
                    ),
                    // Column(
                    //   crossAxisAlignment: CrossAxisAlignment.center,
                    //   children: [
                    //     Padding(
                    //       padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    //       child: Column(
                    //         crossAxisAlignment: CrossAxisAlignment.center,
                    //         children: tech.map((e) {
                    //           return Row(
                    //             // mainAxisAlignment: MainAxisAlignment.center,
                    //             children: [
                    //               CircleAvatar(
                    //                   radius: 3,
                    //                   backgroundColor: Colors.green[300]),
                    //               SizedBox(width: 5),
                    //               Text(
                    //                 e,
                    //                 style: TextStyle(
                    //                     fontSize: 15, color: Colors.grey),
                    //               ),
                    //             ],
                    //           );
                    //         }).toList(),
                    //       ),
                    //     ),
                    //     SizedBox(height: 5),
                    //   ],
                    // ),
                  ]),
            ),
            Container(
              width: MediaQuery.of(context).size.width > 500
                  ? MediaQuery.of(context).size.width - 300 - 50
                  : 360,
              constraints: BoxConstraints(minWidth: 100, maxWidth: 1024),
              child: Column(
                children: [
                  SizedBox(height: 15),
                  Text("Responsibilities",
                      style: TextStyle(
                        fontSize: 10,
                        color: Colors.grey,
                      )),
                  SizedBox(height: 5),
                  BulletedList(
                    listItems: experience.responsibilities,
                    listOrder: ListOrder.ordered,
                  ),
                  SizedBox(height: 15),
                ],
              ),
            ),
          ]),
        ),
      ),
    );
  }
}

// class BulletList extends StatelessWidget {
//   BulletList({required List<String> strings});
//   late List<String> strings;

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       alignment: Alignment.centerLeft,
//       padding: EdgeInsets.fromLTRB(16, 15, 16, 16),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: strings.map((str) {
//           return Row(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Text(
//                 '\u2022',
//                 style: TextStyle(
//                   fontSize: 16,
//                   height: 1.55,
//                 ),
//               ),
//               SizedBox(
//                 width: 5,
//               ),
//               Text(
//                 str,
//                 textAlign: TextAlign.left,
//                 softWrap: true,
//                 style: TextStyle(
//                   fontSize: 16,
//                   color: Colors.black.withOpacity(0.6),
//                   height: 1.55,
//                 ),
//               ),
//             ],
//           );
//         }).toList(),
//       ),
//     );
//   }
// }
