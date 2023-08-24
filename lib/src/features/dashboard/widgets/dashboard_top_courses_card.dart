import 'package:auth/src/features/dashboard/models/dashboard_models/dashboard_top_courses_model.dart';
import 'package:flutter/material.dart';

class DashboardTopCoursesCard extends StatelessWidget {
  const DashboardTopCoursesCard({
    super.key,
    required this.dashboardTopCourseModel,
  });

  final DashboardTopCourseModel dashboardTopCourseModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      margin: const EdgeInsets.only(left: 10, right: 10),
      height: 230,
      width: MediaQuery.of(context).size.width - 20,
      decoration: BoxDecoration(
        color: dashboardTopCourseModel.color,
        borderRadius: BorderRadius.circular(4),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width / 2,
                child: Text(
                  dashboardTopCourseModel.headingText,
                  style: Theme.of(context).textTheme.titleLarge,
                  overflow: TextOverflow.clip,
                ),
              ),
              Image.asset(
                dashboardTopCourseModel.image,
                height: 120,
              ),
            ],
          ),
          Row(
            children: [
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(
                      100,
                    ),
                  ),
                ),
                child: const Icon(Icons.play_arrow),
              ),
              const SizedBox(
                width: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    dashboardTopCourseModel.cardTitle,
                    style: Theme.of(context).textTheme.titleSmall,
                    overflow: TextOverflow.ellipsis,
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    dashboardTopCourseModel.cardSubTitle,
                    style: Theme.of(context).textTheme.bodyMedium,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
