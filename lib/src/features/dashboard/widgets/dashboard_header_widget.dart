import 'package:flutter/material.dart';

class DashboardHeaderWidget extends StatelessWidget {
  const DashboardHeaderWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Hello, Flutter Shifu",
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          Text(
            "Explore Courses",
            style: Theme.of(context).textTheme.titleLarge,
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: const EdgeInsets.all(15),
                decoration: const BoxDecoration(
                  border: Border(
                    left: BorderSide(
                      width: 5.0,
                      color: Colors.black,
                    ),
                  ),
                ),
                child: Text(
                  "Search...",
                  style: Theme.of(context)
                      .textTheme
                      .bodyLarge
                      ?.apply(color: Colors.grey),
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.search,
                  size: 30,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
