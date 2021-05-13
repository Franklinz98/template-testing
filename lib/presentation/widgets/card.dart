import 'package:flutter/material.dart';

class AppCard extends StatelessWidget {
  final Widget? topLeftWidget, topRightWidget, extraContent;
  final String? content;
  final String title;

  // AppCard constructor
  AppCard(
      {Key? key,
      required this.title,
      this.content,
      this.topLeftWidget,
      this.topRightWidget,
      this.extraContent})
      : super(
          key: key,
        );

  // Building basic card style
  // With the option to modify its content
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      child: Container(
        padding: const EdgeInsets.only(
            top: 4.0, bottom: 16.0, left: 8.0, right: 8.0),
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.25),
              offset: Offset(0, 1.0),
              blurRadius: 4.0,
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              children: [
                topLeftWidget != null
                    ? topLeftWidget!
                    : SizedBox(
                        width: 48.0,
                      ),
                Expanded(
                  child: Text(
                    title,
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.headline2,
                  ),
                ),
                topRightWidget != null
                    ? topRightWidget!
                    : SizedBox(
                        width: 48.0,
                      ),
              ],
            ),
            SizedBox(
              height: 6.0,
            ),
            if (content != null)
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 4.0),
                child: Text(
                  content!,
                  style: Theme.of(context).textTheme.bodyText1,
                ),
              ),
            if (extraContent != null)
              Padding(
                padding: const EdgeInsets.only(top: 18.0),
                child: extraContent,
              ),
          ],
        ),
      ),
    );
  }
}
