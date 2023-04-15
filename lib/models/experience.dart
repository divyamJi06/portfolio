class Experience {
  final String companyName;
  final DateTime startDate;
  final DateTime endDate;
  final String position;
  // final String description;
  final List<String> responsibilities;
  final List<String> technologies;

  Experience(
      {required this.companyName,
      required this.startDate,
      required this.endDate,
      required this.position,
      required this.responsibilities,
      required this.technologies});
}

List<Experience> expDetails = [
  Experience(
      companyName: "NonStop.IO",
      startDate: DateTime(2022, 1, 1),
      endDate: DateTime(2022, 4, 1),
      position: "Flutter Developer",
      responsibilities: <String>[
        "Learned real-time location real-time location real-time location alerts using firebase real-time db. ",
        'Lorem12',
        'Dart',
        "Learned real-time location alerts. Learned real-time location alerts. Learned real-time location alerts. Learned real-time location alerts. Learned real-time location alerts. Learned real-time location alerts. Learned real-time location alerts using firebase real-time db. Learned real-time location alerts using firebase real-time db",
        'Firebase'
      ],
      technologies: <String>[
        'Flutter',
        'Dart',
        'Firebase'
      ]),
  Experience(
      companyName: "NonStop.IO",
      startDate: DateTime(2022, 1, 1),
      endDate: DateTime(2022, 4, 1),
      position: "Flutter Developer",
      responsibilities: <String>[
        "Learned real-time location real-time location real-time location alerts using firebase real-time db. ",
        'Lorem12',
        'Dart',
        "Learned real-time location alerts. Learned real-time location alerts. Learned real-time location alerts. Learned real-time location alerts. Learned real-time location alerts. Learned real-time location alerts. Learned real-time location alerts using firebase real-time db. Learned real-time location alerts using firebase real-time db",
        'Firebase'
      ],
      technologies: <String>[
        'Flutter',
        'Dart',
        'Firebase'
      ]),
];
