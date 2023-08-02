// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:link2/screen/details/details_page.dart';
import 'package:link2/screen/home/widgets/horizontal_categy_list.dart';
import 'package:link2/utils/constants/app_colors.dart';
import 'package:link2/widgets/spacer/spacer_custom.dart';

import '../../../utils/utils.dart';
import '../../dummy_data/dummy_data.dart';
import '../../gen/assets.gen.dart';
import 'widgets/card_view_widget.dart';
import 'widgets/home_header_widget.dart';
import 'widgets/round_icon_button_widget.dart';
import 'widgets/top_slider_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({
    Key? key,
  }) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backGroundColor,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(24.0, 45, 24, 0),
          child: Column(
            children: [
              const HomeHeaderWidget(),
              const CustomHeightSpacer(
                size: 0.04,
              ),
              const TopSliderWidget(),
              const CustomHeightSpacer(
                size: 0.04,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Discover Hotest\nNews',
                    textAlign: TextAlign.start,
                    style: SafeGoogleFont(
                      'Mulish',
                      fontSize: 24,
                      fontWeight: FontWeight.w700,
                      height: 1.2,
                      color: const Color(0xff1a434e),
                    ),
                  ),
                  RoundIconButtonWidget(
                    iconName: Assets.icons.icSetting5.path,
                    iconColor: AppColors.primaryColor,
                    iconWidth: 20,
                    iconHeight: 20,
                    borderColor: AppColors.borderColor,
                    onTap: () {},
                  ),
                ],
              ),
              const CustomHeightSpacer(
                size: 0.02,
              ),
              const  HorizontalCategoryList(
                items: myCategory,
              ),

              ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: myDataList.length,
                itemBuilder: (BuildContext context, int index) {
                  return  CardViewWidget(image: myDataList[index].image, name: myDataList[index].name, author: myDataList[index].author,onTap: (){

                    Get.to(const DetailsPage());
                  },);
                },
              ),

            ],
          ),
        ),
      ),
    );
  }
}
