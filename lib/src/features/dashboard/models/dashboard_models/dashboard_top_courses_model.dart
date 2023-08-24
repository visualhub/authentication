import 'package:auth/src/constants/image_strings.dart';
import 'package:flutter/material.dart';

class DashboardTopCourseModel {
  DashboardTopCourseModel({
    required this.cardSubTitle,
    required this.headingText,
    required this.cardTitle,
    required this.image,
    required this.color,
    this.onTap,
  });
  final String cardTitle, cardSubTitle, headingText;
  final VoidCallback? onTap;
  final String image;
  final Color color;

  static List<DashboardTopCourseModel> list = [
    DashboardTopCourseModel(
      cardSubTitle: "45 Hours",
      headingText: "Flutter Crash Course",
      cardTitle: "For Beginners",
      color: Colors.amber,
      image: tFlutterLogo,
    ),
    DashboardTopCourseModel(
      cardSubTitle: "23 Hours",
      headingText: "React - UpDated(2023)",
      cardTitle: "Every Level",
      color: Colors.blueGrey,
      image: tMernLogo,
    ),
    DashboardTopCourseModel(
      cardSubTitle: "27 Hours",
      headingText: "Complete Wordpress Guide",
      cardTitle: "Intermediate Level",
      color: Colors.deepOrangeAccent,
      image: tWordpressLogo,
    ),
  ];
}
