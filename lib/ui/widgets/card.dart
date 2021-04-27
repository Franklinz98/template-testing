import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppCard extends StatelessWidget {
  final Widget? topLeftWidget, topRightWidget, extraContent;
  final String title;
  final String? content;

  AppCard(
      {Key? key,
      required this.title,
      this.content,
      this.topLeftWidget,
      this.topRightWidget,
      this.extraContent})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 16.0),
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
              this.topLeftWidget != null
                  ? this.topLeftWidget!
                  : SizedBox(
                      width: 48.0,
                    ),
              Expanded(
                child: Text(
                  this.title,
                  textAlign: TextAlign.center,
                  style: GoogleFonts.openSans(
                    fontSize: 18.0,
                    color: const Color(0xFF707070),
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              this.topRightWidget != null
                  ? this.topRightWidget!
                  : SizedBox(
                      width: 48.0,
                    ),
            ],
          ),
          SizedBox(
            height: 6.0,
          ),
          if (this.content != null)
            Text(
              this.content!,
              style: GoogleFonts.roboto(
                fontSize: 18.0,
                color: const Color(0xFF090909),
              ),
            ),
          if (this.extraContent != null) this.extraContent!,
        ],
      ),
    );
  }
}
