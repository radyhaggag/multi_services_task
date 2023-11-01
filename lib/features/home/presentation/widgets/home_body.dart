import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/extensions/media_query.dart';
import '../../../../core/utils/app_colors.dart';
import 'description_section.dart';
import 'presentation_section.dart';
import 'tab_bar_builder.dart';
import 'three_dots_builder.dart';
import 'welcome_msg.dart';

const _homePadding = EdgeInsets.symmetric(horizontal: 20, vertical: 16);

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Container(
          color: AppColors.light,
          padding: _homePadding,
          child: Column(
            children: [
              const WelcomeMsg(),
              SizedBox(height: 16.h),
              const DescriptionSection(),
              SizedBox(height: 8.h),
              const PresentationSection(),
              SizedBox(height: 10.h),
              const ThreeDotsBuilder(),
            ],
          ),
        ),
        SizedBox(
          height: context.height / 1.5,
          child: const Padding(
            padding: _homePadding,
            child: TabBarBuilder(),
          ),
        ),
      ],
    );
  }
}
