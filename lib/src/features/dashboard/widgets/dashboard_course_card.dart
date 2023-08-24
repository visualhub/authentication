import 'package:auth/src/features/dashboard/models/dashboard_models/dashboard_course_card_model.dart';
import 'package:flutter/material.dart';

class DashboardCourseCard extends StatelessWidget {
  const DashboardCourseCard({
    super.key,
    required this.dashboardCourseCardModel,
  });
  final DashboardCourseCardModel dashboardCourseCardModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 10),
      decoration: BoxDecoration(
        color: const Color.fromARGB(31, 255, 255, 255),
        borderRadius: BorderRadius.circular(4),
      ),
      height: 45,
      width: 150,
      child: Row(
        children: [
          Container(
            height: 45,
            width: 45,
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Align(
              alignment: Alignment.center,
              child: Text(
                dashboardCourseCardModel.cardText,
                style: Theme.of(context)
                    .textTheme
                    .titleMedium
                    ?.apply(color: Colors.white),
              ),
            ),
          ),
          const SizedBox(
            width: 5,
          ),
          Flexible(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  dashboardCourseCardModel.cardTitle,
                  style: Theme.of(context).textTheme.titleSmall,
                  overflow: TextOverflow.ellipsis,
                ),
                Text(
                  dashboardCourseCardModel.cardSubTitle,
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
