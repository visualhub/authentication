import 'package:auth/src/constants/image_strings.dart';
import 'package:auth/src/features/dashboard/models/dashboard_models/dashboard_course_card_model.dart';
import 'package:auth/src/features/dashboard/models/dashboard_models/dashboard_top_courses_model.dart';
import 'package:auth/src/features/dashboard/widgets/dashboard_course_card.dart';
import 'package:auth/src/features/dashboard/widgets/dashboard_header_widget.dart';
import 'package:auth/src/features/dashboard/widgets/dashboard_app_bar.dart';
import 'package:auth/src/features/dashboard/widgets/dashboard_banner_card.dart';
import 'package:auth/src/features/dashboard/widgets/dashboard_top_courses_card.dart';

import 'package:flutter/material.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    List<DashboardTopCourseModel> topCourseList = DashboardTopCourseModel.list;
    List<DashboardCourseCardModel> widgetList = DashboardCourseCardModel.list;
    return Scaffold(
      appBar: const DashboardAppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            //
            //-- Dashboard Header --
            //
            const DashboardHeaderWidget(),
            //
            //-- Lessons Cards Widget --
            //
            SizedBox(
              height: 45,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: widgetList.length,
                itemBuilder: (context, index) {
                  return DashboardCourseCard(
                    dashboardCourseCardModel: DashboardCourseCardModel(
                      cardSubTitle: widgetList[index].cardSubTitle,
                      cardText: widgetList[index].cardText,
                      cardTitle: widgetList[index].cardTitle,
                    ),
                  );
                },
              ),
            ),
            //
            // --Banner Cards --
            //
            Container(
              height: 230,
              padding: const EdgeInsets.all(10),
              child: const Row(
                children: [
                  DashboardBannerCard(
                      enableButton: false,
                      subTitle: "10 Courses",
                      title: "Learn to Code with Java",
                      iconButton: Icon(Icons.bookmark),
                      imageString: tBook),
                  SizedBox(
                    width: 10,
                  ),
                  DashboardBannerCard(
                      enableButton: true,
                      subTitle: "10 Courses",
                      title: "JAVA",
                      iconButton: Icon(Icons.bookmark),
                      imageString: tBook),
                ],
              ),
            ),

            Container(
              padding: const EdgeInsets.all(10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  const SizedBox(
                    height: 10,
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Top Courses",
                      style: Theme.of(context).textTheme.headlineSmall,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 230,
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: topCourseList.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return DashboardTopCoursesCard(
                    dashboardTopCourseModel: DashboardTopCourseModel(
                        cardSubTitle: topCourseList[index].cardSubTitle,
                        headingText: topCourseList[index].headingText,
                        cardTitle: topCourseList[index].cardTitle,
                        image: topCourseList[index].image,
                        color: topCourseList[index].color),
                  );
                },
              ),
            ),
            const SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}
