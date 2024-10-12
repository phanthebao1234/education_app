import 'package:education_app/common/utils/kcolors.dart';
import 'package:education_app/common/widgets/app_style.dart';
import 'package:education_app/common/widgets/reusable_text.dart';
import 'package:education_app/const/resource.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeSlide extends StatelessWidget {
  const HomeSlide({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          Padding(
            padding:  EdgeInsets.all(4.0),
            child: Container(
              width: 133.w,
              height: 133.h,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(R.ASSETS_IMAGES_ROCKET_PNG),
                      fit: BoxFit.cover)),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    const Icon(
                      Icons.home,
                      size: 14,
                      color: Kolors.kWhite,
                    ),
                    SizedBox(
                      width: 12.w,
                    ),
                    ReusableText(
                      text: 'Gift Box',
                      style: appStyle(11, Kolors.kWhite, FontWeight.normal),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: Container(
              width: 133.w,
              height: 133.h,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(R.ASSETS_IMAGES_CLOCK_PNG),
                      fit: BoxFit.cover)),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    const Icon(
                      Icons.home,
                      size: 14,
                      color: Kolors.kWhite,
                    ),
                    SizedBox(
                      width: 12.w,
                    ),
                    ReusableText(
                      text: 'Gift Box',
                      style: appStyle(11, Kolors.kWhite, FontWeight.normal),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: Container(
              width: 133.w,
              height: 133.h,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(R.ASSETS_IMAGES_CLOCK_PNG),
                      fit: BoxFit.cover)),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    const Icon(
                      Icons.home,
                      size: 14,
                      color: Kolors.kWhite,
                    ),
                    SizedBox(
                      width: 12.w,
                    ),
                    ReusableText(
                      text: 'Gift Box',
                      style: appStyle(11, Kolors.kWhite, FontWeight.normal),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
