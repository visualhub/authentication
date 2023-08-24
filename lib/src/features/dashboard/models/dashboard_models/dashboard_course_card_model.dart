import 'package:flutter/material.dart';

class DashboardCourseCardModel {
  DashboardCourseCardModel({
    required this.cardSubTitle,
    required this.cardText,
    required this.cardTitle,
    this.onTap,
  });
  final String cardTitle, cardSubTitle, cardText;
  final VoidCallback? onTap;

  static List<DashboardCourseCardModel> list = [
    DashboardCourseCardModel(
      cardSubTitle: "10 Lessons",
      cardText: "H",
      cardTitle: "Learn HTML",
    ),
    DashboardCourseCardModel(
      cardSubTitle: "8 Lessons",
      cardText: "C",
      cardTitle: "Learn CSS",
    ),
    DashboardCourseCardModel(
      cardSubTitle: "12 Lessons",
      cardText: "JS",
      cardTitle: "Java Script",
    ),
    DashboardCourseCardModel(
      cardSubTitle: "5 Lessons",
      cardText: "S",
      cardTitle: "Learn SQL",
    ),
  ];
}
