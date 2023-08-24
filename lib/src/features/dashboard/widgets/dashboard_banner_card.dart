import 'package:flutter/material.dart';

class DashboardBannerCard extends StatelessWidget {
  const DashboardBannerCard({
    super.key,
    required this.enableButton,
    required this.subTitle,
    required this.title,
    this.buttonText = "View all",
    required this.iconButton,
    required this.imageString,
    this.onPressed,
    this.onPressedIconButton,
  });

  final bool enableButton;
  final String title, subTitle;
  final String buttonText;
  final Icon iconButton;
  final String imageString;
  final VoidCallback? onPressedIconButton;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.black12,
                  borderRadius: BorderRadius.circular(5)),
              padding: const EdgeInsets.all(10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      IconButton(
                          onPressed: onPressedIconButton, icon: iconButton),
                      Image.asset(
                        imageString,
                        height: 80,
                      )
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        style: Theme.of(context).textTheme.titleSmall,
                        overflow: TextOverflow.clip,
                      ),
                      Text(
                        subTitle,
                        style: Theme.of(context).textTheme.bodyMedium,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          if (enableButton) ...[
            SizedBox(
              width: double.infinity,
              child: OutlinedButton(
                onPressed: onPressed,
                child: Text(buttonText),
              ),
            ),
          ]
        ],
      ),
    );
  }
}
