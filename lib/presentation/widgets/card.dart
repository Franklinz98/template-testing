import 'package:f_social_network/presentation/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppCard extends Card {
  final Widget? topLeftWidget, topRightWidget, extraContent;
  final String? content;
  final String title;

  AppCard(
      {Key? key,
      required this.title,
      this.content,
      this.topLeftWidget,
      this.topRightWidget,
      this.extraContent})
      : super(
          key: key,
          color: Colors.white,
          child: Container(
            padding:
                const EdgeInsets.only(top:4.0, bottom: 16.0, left: 8.0, right: 8.0),
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
                        ? topLeftWidget
                        : SizedBox(
                            width: 48.0,
                          ),
                    Expanded(
                      child: Text(
                        title,
                        textAlign: TextAlign.center,
                        style: GoogleFonts.openSans(
                          fontSize: 16.0,
                          color: AppColors.doveGray,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    topRightWidget != null
                        ? topRightWidget
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
                      content,
                      style: GoogleFonts.roboto(
                        fontSize: 16.0,
                        color: Colors.black,
                      ),
                    ),
                  ),
                if (extraContent != null) Padding(
                  padding: const EdgeInsets.only(top: 18.0),
                  child: extraContent,
                ),
              ],
            ),
          ),
        );

  /* @override
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
                    color: AppColors.doveGray,
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
                color: Colors.black,
              ),
            ),
          if (this.extraContent != null) this.extraContent!,
        ],
      ),
    );
  } */
}
