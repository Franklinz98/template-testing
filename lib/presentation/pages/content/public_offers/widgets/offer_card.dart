import 'package:f_social_network/presentation/theme/colors.dart';
import 'package:f_social_network/presentation/widgets/button.dart';
import 'package:f_social_network/presentation/widgets/card.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OfferCard extends AppCard {
  final String title, content, arch, level;
  final int payment;
  final VoidCallback onCopy;
  OfferCard(
      {Key? key,
      required this.title,
      required this.content,
      required this.arch,
      required this.level,
      required this.payment,
      required this.onCopy})
      : super(
          title: title,
          content: content,
          topRightWidget: IconButton(
            icon: Icon(
              Icons.copy_outlined,
              color: AppColors.mountainMeadow,
            ),
            onPressed: onCopy,
          ),
          extraContent: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Icon(
                      Icons.architecture,
                      color: AppColors.mountainMeadow,
                    ),
                  ),
                  Text(
                    arch,
                    style: GoogleFonts.openSans(
                      fontSize: 16.0,
                      color: AppColors.mountainMeadow,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Spacer(),
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Icon(
                      Icons.developer_mode_outlined,
                      color: AppColors.mountainMeadow,
                    ),
                  ),
                  Text(
                    level,
                    style: GoogleFonts.openSans(
                      fontSize: 16.0,
                      color: AppColors.mountainMeadow,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Spacer(),
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Icon(
                      Icons.payments_outlined,
                      color: AppColors.mountainMeadow,
                    ),
                  ),
                  Text(
                    '\$$payment',
                    style: GoogleFonts.openSans(
                      fontSize: 16.0,
                      color: AppColors.mountainMeadow,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 8.0,
              ),
              AppButton(
                text: 'Aplicar',
                onPressed: () => {},
              )
            ],
          ),
        );
}
