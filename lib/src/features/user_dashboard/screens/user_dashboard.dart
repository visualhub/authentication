import 'package:auth/src/common_widgets/text_form_field_widget/model/text_form_field_model.dart';
import 'package:auth/src/common_widgets/text_form_field_widget/screen/text_form_field_widget.dart';
import 'package:flutter/material.dart';

class UserDashboard extends StatelessWidget {
  const UserDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(".appDashboard/"),
        leading: IconButton(onPressed: () {}, icon: const Icon(Icons.menu)),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.supervised_user_circle),
          ),
        ],
      ),
      body: ListView(
        children: [
          Container(
            padding: const EdgeInsets.all(10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Hello, Flutter Shifu",
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
                Text(
                  "Explore Courses",
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
                const SizedBox(
                  height: 10,
                ),
                TextFormFieldWidget(
                    roundedBorder: true,
                    model: TextFormFieldModel(
                        hintText: "Search",
                        labelText: "Search",
                        suffixIcon: IconButton(
                            onPressed: () {}, icon: const Icon(Icons.search))),
                    obscureText: false),
                const SizedBox(
                  height: 0,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 45,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: const [
                DashboardLessonsCard(),
                DashboardLessonsCard(),
                DashboardLessonsCard(),
                DashboardLessonsCard(),
                DashboardLessonsCard(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class DashboardLessonsCard extends StatelessWidget {
  const DashboardLessonsCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10.0),
      child: Container(
        decoration: BoxDecoration(
          color: const Color.fromARGB(31, 148, 145, 145),
          borderRadius: BorderRadius.circular(10),
        ),
        height: 45,
        width: 135,
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
                  "JS",
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
                    "JavaScript",
                    style: Theme.of(context).textTheme.titleSmall,
                    overflow: TextOverflow.ellipsis,
                  ),
                  Text(
                    "10 Lessons",
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}


//  SizedBox(
//           height: 45,
//           child: ListView(
//             shrinkWrap: true,
//             scrollDirection: Axis.horizontal,
//             children: [
//               Container(
//                 width: 170,
//                 color: Colors.amber,
//               ),
//               Container(
//                 width: 170,
//                 color: Colors.brown,
//               ),
//               Container(
//                 width: 170,
//                 color: Colors.blueGrey,
//               ),
//             ],
//           ),
//         ),