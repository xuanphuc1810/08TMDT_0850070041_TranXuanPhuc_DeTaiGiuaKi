// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:link2/screen/details/widgets/details_header_widget.dart';
import 'package:link2/utils/constants/app_colors.dart';

import '../../utils/utils.dart';

class DetailsPage extends StatefulWidget {
  const DetailsPage({
    Key? key,
  }) : super(key: key);

  @override
  _DetailsPageState createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backGroundColor,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            DetailsHeaderWidget(onTap: () {
              Get.back();
            }),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 24),
              child: Text(
                'An exhibition exploring 350 years of relations between the Japanese and British royal families has opened at the Queen’s Gallery near Buckingham Palace, the London home of the British monarchy.',
                style: SafeGoogleFont(
                  'Mulish',
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  height: 1.8,
                  color: const Color(0xff95a6aa),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: Text(
                'UK-Japan royal relationship',
                style: SafeGoogleFont(
                  'Mulish',
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                  height: 1.3,
                  color: const Color(0xff1a434e),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 24),
              child: Text(
                'The exhibition features some 150 items from the royal family’s permanent collection, many of which were gifted to British royals by Japanese emperors and shoguns and are on public display for the first time.\n\nCurator Rachel Peat said the “stunning” works have “profoundly shaped British taste and helped forge a lasting relationship between the two nations.”',
                style: SafeGoogleFont(
                  'Mulish',
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  height: 1.8,
                  color: const Color(0xff95a6aa),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}


