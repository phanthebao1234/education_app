import 'package:education_app/common/services/storage.dart';
import 'package:education_app/common/utils/kcolors.dart';
import 'package:education_app/common/widgets/app_style.dart';
import 'package:education_app/common/widgets/reusable_text.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    _navigator();
    super.initState();
  }

  _navigator() async {
    await Future.delayed(const Duration(milliseconds: 3000), () {
      if (Storage().getBool('firstOpen') == null) {
        // go onboaring page
        GoRouter.of(context).go('/onboarding');
      } else {
        // go home page
        GoRouter.of(context).go('/home');
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(
            gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            Color(0xff32C5FF),
            Color(0xffF7B500),
          ],
        )),
        // child: ReusableText(
        //   text: "Education Text ",
        //   style: appStyle(16, Kolors.kPrimary, FontWeight.w500),
        // ),
      ),
    );
  }
}
