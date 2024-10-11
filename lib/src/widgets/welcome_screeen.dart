import 'package:education_app/common/utils/kcolors.dart';
import 'package:education_app/common/utils/kstrings.dart';
import 'package:education_app/common/widgets/app_style.dart';
import 'package:education_app/common/widgets/reusable_text.dart';
import 'package:education_app/const/resource.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
              gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              const Color(0xff32C5FF).withOpacity(0.1),
              const Color(0xffF7B500).withOpacity(0.2),
            ],
          )),
        ),
        Column(
          children: [
            AppBar(
              title: SizedBox(
                child: Center(
                  child: Column(
                    children: [
                      Image.asset(
                        R.ASSETS_IMAGES_SAMOHVAL_non_shadow_PNG,
                        fit: BoxFit.cover,
                      ),
                      Image.asset(
                        R.ASSETS_IMAGES_EDUCATION_PNG,
                        fit: BoxFit.cover,
                      )
                    ],
                  ),
                ),
              ),
              backgroundColor: Colors.transparent,
              elevation: 0,
            ),
            Expanded(
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center, // dọc
                  crossAxisAlignment: CrossAxisAlignment.center, // ngang
                  children: [
                    ReusableText(
                        text: AppText.kWellcome,
                        style: appStyle(32, Kolors.kDark, FontWeight.w600)),
                    const SizedBox(
                      height: 40,
                    ),
                    SizedBox(
                      width: 200,
                      child: RichText(
                        textAlign: TextAlign.center,
                        text: TextSpan(
                          text: 'In the ',
                          style: appStyle(15, Kolors.kDark, FontWeight.normal),
                          children: <TextSpan>[
                            TextSpan(
                              text: 'lessons',
                              style:
                                  appStyle(15, Kolors.kDark, FontWeight.bold),
                            ),
                            TextSpan(
                              text: ' we learns new words.',
                              style:
                                  appStyle(15, Kolors.kDark, FontWeight.normal),
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ]),
    );
  }
}
