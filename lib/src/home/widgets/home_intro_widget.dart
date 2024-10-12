import 'package:education_app/common/utils/kcolors.dart';
import 'package:education_app/common/widgets/app_style.dart';
import 'package:education_app/common/widgets/reusable_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeIntro extends StatelessWidget {
  const HomeIntro({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ClipRRect(
              child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 3.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: Kolors.kWhite,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  width: ScreenUtil().screenWidth - 20,
                  height: 120.h,
                  child: Row(
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(left: 20.0, right: 10.0),
                        child: Icon(Icons.home_outlined,
                            size: 25, color: Kolors.kDark),
                      ),
                      SizedBox(
                        width: ScreenUtil().screenWidth * .7,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 5.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              ReusableText(
                                text: 'Completed',
                                style: appStyle(
                                    10, Colors.green, FontWeight.normal),
                              ),
                              ReusableText(
                                text: 'Introduction',
                                style:
                                    appStyle(12, Kolors.kDark, FontWeight.bold),
                              ),
                              ReusableText(
                                text:
                                    'In the lessns we leran new words and rules for vacalaburities continues and articles',
                                style:
                                    appStyle(11, Kolors.kDark, FontWeight.w400),
                                softWrap: true,
                                maxLines: 3,
                              ),
                            ],
                          ),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(right: 0),
                        child: Icon(Icons.arrow_right_outlined),
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 3.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: Kolors.kWhite,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  width: ScreenUtil().screenWidth - 20,
                  height: 120.h,
                  child: Row(
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(left: 20.0, right: 10.0),
                        child: Icon(Icons.home_outlined,
                            size: 25, color: Kolors.kDark),
                      ),
                      SizedBox(
                        width: ScreenUtil().screenWidth * .7,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 5.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              ReusableText(
                                text: 'Completed',
                                style: appStyle(
                                    10, Colors.green, FontWeight.normal),
                              ),
                              ReusableText(
                                text: 'Introduction',
                                style:
                                    appStyle(12, Kolors.kDark, FontWeight.bold),
                              ),
                              ReusableText(
                                text:
                                    'In the lessns we leran new words and rules for vacalaburities continues and articles',
                                style:
                                    appStyle(11, Kolors.kDark, FontWeight.w400),
                                softWrap: true,
                                maxLines: 3,
                              ),
                            ],
                          ),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(right: 0),
                        child: Icon(Icons.arrow_right_outlined),
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 3.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: Kolors.kWhite,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  width: ScreenUtil().screenWidth - 20,
                  height: 120.h,
                  child: Row(
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(left: 20.0, right: 10.0),
                        child: Icon(Icons.home_outlined,
                            size: 25, color: Kolors.kDark),
                      ),
                      SizedBox(
                        width: ScreenUtil().screenWidth * .7,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 5.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              ReusableText(
                                text: 'Completed',
                                style: appStyle(
                                    10, Colors.green, FontWeight.normal),
                              ),
                              ReusableText(
                                text: 'Introduction',
                                style:
                                    appStyle(12, Kolors.kDark, FontWeight.bold),
                              ),
                              ReusableText(
                                text:
                                    'In the lessns we leran new words and rules for vacalaburities continues and articles',
                                style:
                                    appStyle(11, Kolors.kDark, FontWeight.w400),
                                softWrap: true,
                                maxLines: 3,
                              ),
                            ],
                          ),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(right: 0),
                        child: Icon(Icons.arrow_right_outlined),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ))
        ],
      ),
    );
  }
}
