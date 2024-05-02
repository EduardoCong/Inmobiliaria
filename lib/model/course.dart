import 'package:flutter/material.dart' show Color;

class Course {
  final String title, description, iconSrc;
  final Color color;

  Course({
    required this.title,
    this.description = 'Build and animate an iOS app from scratch',
    this.iconSrc = "assets/icons/ios.svg",
    this.color = const Color(0xFF3657BB),
  });
}

final List<Course> courses = [
  Course(
    title: "Propiedad 1",
  ),
  Course(
    title: "Propiedad 2",
    iconSrc: "assets/icons/code.svg",
  ),
  Course(
    title: "Propiedad 3",
    iconSrc: "assets/icons/code.svg",
  ),
  Course(
    title: "Propiedad 4",
    iconSrc: "assets/icons/code.svg",
  ),
  Course(
    title: "Propiedad 5",
    iconSrc: "assets/icons/code.svg",
  ),
  Course(
    title: "Propiedad 6",
    iconSrc: "assets/icons/code.svg",
  ),
];

final List<Course> recentCourses = [
  Course(
    title: "La Mezquita",
    color: const Color(0xFF9CC5FF),
    iconSrc: "assets/icons/code.svg",
  ),
  Course(
    title: "El buen dormir",
    color: const Color(0xFF9CC5FF),
    iconSrc: "assets/icons/code.svg",
  ),
  Course(
    title: "Casa Balam",
    color: const Color(0xFF9CC5FF),
    iconSrc: "assets/icons/code.svg",
  ),
  Course(
    title: "Montejo",
    color: const Color(0xFF9CC5FF),
    iconSrc: "assets/icons/code.svg",
  ),
  Course(
    title: "Plaza Mirador",
    color: const Color(0xFF9CC5FF),
    iconSrc: "assets/icons/code.svg",
  ),
];
