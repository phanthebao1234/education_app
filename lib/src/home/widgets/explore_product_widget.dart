import 'package:education_app/common/utils/kcolors.dart';
import 'package:education_app/common/widgets/app_style.dart';
import 'package:education_app/common/widgets/reusable_text.dart';
import 'package:education_app/const/resource.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ExploreProduct extends StatelessWidget {
  const ExploreProduct({super.key});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 8.w,
      runSpacing: 8.h,
      children: [
        Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: Kolors.kGray, width: .2)),
          // width: ScreenUtil().screenWidth * .5,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              ReusableText(
                text: '100 Essential Grammar',
                style: appStyle(18, Kolors.kDark, FontWeight.bold),
              ),
              SizedBox(
                height: 10.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    R.ASSETS_IMAGES_RECTANGLE_PNG,
                    width: 28,
                    height: 28,
                  ),
                  SizedBox(
                    width: 10.w,
                  ),
                  ReusableText(
                    text: 'In the lessns we leran new words.',
                    style: appStyle(12, Kolors.kDark, FontWeight.normal),
                    maxLines: 4,
                    softWrap: true,
                  )
                ],
              ),
              SizedBox(height: 8.h),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40.0),
                child: LinearProgressIndicator(
                  value: 1.0, // 100% completed
                  backgroundColor: Colors.grey[300],
                  valueColor: AlwaysStoppedAnimation<Color>(Kolors.kGreen),
                ),
              ),
              SizedBox(height: 4.h),
              ReusableText(
                text: 'Completed 12 of 12',
                style: appStyle(12, Kolors.kGreen, FontWeight.normal),
              ),
              SizedBox(height: 16.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding:
                        EdgeInsets.symmetric(vertical: 4.0, horizontal: 8.0),
                    decoration: BoxDecoration(
                      color: Colors.orange,
                      borderRadius: BorderRadius.circular(16.0),
                    ),
                    child: Text(
                      'Reputation',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  Container(
                    padding:
                        EdgeInsets.symmetric(vertical: 4.0, horizontal: 8.0),
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(16.0),
                    ),
                    child: Text(
                      '24 Lessons',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ],
              ),
            ],
          ),
        )
      ],
    );
  }
}
