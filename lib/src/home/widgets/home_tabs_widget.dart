import 'package:education_app/common/utils/kcolors.dart';
import 'package:education_app/common/widgets/app_style.dart';
import 'package:education_app/common/widgets/tab_widget.dart';
import 'package:education_app/src/home/views/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeTabs extends StatelessWidget {
  const HomeTabs({super.key, required TabController tabController})
      : _tabController = tabController;

  final TabController _tabController;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 35.h,
      child: TabBar(
        controller: _tabController,
        indicator: BoxDecoration(
          color: const Color.fromARGB(255, 248, 248, 248),
          border: Border.all(color: Kolors.kWhite, width: 1.0),
          // borderRadius: BorderRadius.circular(25),
          // backgroundBlendMode: BlendMode.color,
        ),
        labelPadding: EdgeInsets.zero,
        labelColor: Kolors.kDark,
        dividerColor: Colors.transparent,
        tabAlignment: TabAlignment.start,
        isScrollable: true,
        labelStyle: appStyle(11, Kolors.kDark, FontWeight.normal),
        unselectedLabelStyle: appStyle(11, Kolors.kGray, FontWeight.normal),
        tabs: List.generate(
          homeTabs.length,
          (i) => Tab(
            child: TabWidget(
              text: homeTabs[i],
            ),
          ),
        ),
      ),
    );
  }
}
