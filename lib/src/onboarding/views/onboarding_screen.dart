// import 'package:education_app/common/utils/kcolors.dart';
import 'package:education_app/src/onboarding/controllers/onboarding_notifier.dart';
import 'package:education_app/src/widgets/onboarding_page_one.dart';
import 'package:education_app/src/widgets/onboarding_page_two.dart';
import 'package:education_app/src/widgets/welcome_screeen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:provider/provider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  late final PageController _pageController;

  @override
  void initState() {
    _pageController = PageController(
        initialPage: context.read<OnboardingNotifier>().selectedPage);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: _pageController,
            onPageChanged: (page) {
              print(context.read<OnboardingNotifier>().selectedPage);
              // print(page);
              context.read<OnboardingNotifier>().setSelectedPage = page;
            },
            children: const [
              WelcomeScreen(),
              OnboardingPageOne(),
              OnboardingPageTwo(),
            ],
          ),
          context.read<OnboardingNotifier>().selectedPage == 2
              ? const SizedBox.shrink()
              : Positioned(
                  bottom: 50.h,
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 20.w),
                    width: ScreenUtil().screenWidth,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: ScreenUtil().screenWidth * 0.7,
                          height: 50.h,
                          child: Center(
                            child: SmoothPageIndicator(
                              controller: _pageController, // PageController
                              count: 3,
                              effect: const ExpandingDotsEffect(
                                  dotColor: Color(0xff979797),
                                  strokeWidth: 1.2,
                                  activeDotColor: Color(0xff979797)),
                              onDotClicked: (index) {
                                print('index: $index');
                                context
                                    .read<OnboardingNotifier>()
                                    .setSelectedPage = index;
                                _pageController.animateToPage(index,
                                    duration: const Duration(microseconds: 100),
                                    curve: Curves.ease);
                              },
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                )
        ],
      ),
    );
  }
}
