import 'package:education_app/common/utils/kcolors.dart';
import 'package:education_app/common/utils/kstrings.dart';
import 'package:education_app/common/widgets/app_style.dart';
import 'package:education_app/common/widgets/custom_button.dart';
import 'package:education_app/common/widgets/email_textfield.dart';
import 'package:education_app/common/widgets/password_field.dart';
import 'package:education_app/common/widgets/reusable_text.dart';
import 'package:education_app/const/resource.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  late final TextEditingController _emailController = TextEditingController();
  late final TextEditingController _passwordController =
      TextEditingController();
  final FocusNode _passwordNode = FocusNode();
  bool isChecked = false;
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
                leading: Icon(
                  Icons.circle_outlined,
                  color: Kolors.kWhite,
                ),
                title: Center(
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
                backgroundColor: Colors.transparent,
                elevation: 0,
                centerTitle: true,
                actions: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: Switch(
                      value: false, // giá trị ban đầu của nút chuyển đổi
                      onChanged: (value) {
                        // xử lý logic khi thay đổi trạng thái nút chuyển đổi
                      },
                    ),
                  ),
                  // Icon(Icons.nightlight_round, color: Colors.black),
                ]),
            Expanded(
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center, // dọc
                  crossAxisAlignment: CrossAxisAlignment.center, // ngang
                  children: [
                    ReusableText(
                        text: 'Create Account',
                        style: appStyle(34, Kolors.kDark, FontWeight.w600)),
                    SizedBox(
                      height: 10.h,
                    ),
                    SizedBox(
                      width: 320,
                      child: RichText(
                        textAlign: TextAlign.center,
                        text: TextSpan(
                          text: AppText.createAccountText,
                          style: appStyle(15, Kolors.kDark, FontWeight.w400),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 40.0),
                      child: Column(
                        children: [
                          EmailTextField(
                            radius: 10,
                            hintText: "Email",
                            focusNode: _passwordNode,
                            controller: _emailController,
                            prefixIcon: const Icon(
                              CupertinoIcons.mail,
                              size: 20,
                              color: Kolors.kGray,
                            ),
                            keyboardType: TextInputType.name,
                            onEditingComplete: () {
                              FocusScope.of(context)
                                  .requestFocus(_passwordNode);
                            },
                          ),
                          SizedBox(
                            height: 10.h,
                          ),
                          PasswordField(
                            controller: _passwordController,
                            focusNode: _passwordNode,
                            radius: 25,
                          ),
                          SizedBox(
                            height: 15.h,
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 20.0),
                            child: Center(
                              child: Row(
                                children: [
                                  Checkbox(
                                    value: isChecked,
                                    onChanged: (bool? value) {
                                      setState(() {
                                        isChecked = value!;
                                      });
                                    },
                                  ),
                                  ReusableText(
                                    text: AppText.termOfUsingThisApplication,
                                    style: appStyle(
                                        12, Kolors.kDark, FontWeight.normal),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          CustomButton(
                            text: 'Start to learn',
                            btnHeight: 44.h,
                            btnWidth: 200.w,
                            radius: 22,
                            textSize: 18,
                            btnColor: Kolors.kGold,
                            onTap: () {
                              context.push('/home');
                            },
                            // onTap: () {
                            //   if (_emailController.text != '' ||
                            //       _passwordController.text != '') {
                            //     LoginModel model = LoginModel(
                            //       username: _emailController.text,
                            //       password: _passwordController.text,
                            //     );
                            //     String data = loginModelToJson(model);
                            //     context
                            //         .read<AuthNotifier>()
                            //         .loginFunc(data, context);
                            //   } else {
                            //     return showErrorPopup(
                            //         context, AppText.kErrorLogin, null, null);
                            //   }
                            // },
                          ),
                          SizedBox(
                            height: 20.h,
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 40.0),
                            child: GestureDetector(
                              child: ReusableText(
                                  text:
                                      AppText.haveYouReadySignIn.toUpperCase(),
                                  style: appStyle(
                                      11, Kolors.kBlue, FontWeight.normal)),
                            ),
                          )
                        ],
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


// return Scaffold(
//       body: Stack(
//         children: [
//           Container(
//             width: MediaQuery.of(context).size.width,
//             height: MediaQuery.of(context).size.height,
//             decoration: BoxDecoration(
//                 gradient: LinearGradient(
//               begin: Alignment.topLeft,
//               end: Alignment.bottomRight,
//               colors: [
//                 const Color(0xff32C5FF).withOpacity(0.1),
//                 const Color(0xffF7B500).withOpacity(0.2),
//               ],
//             )),
//           ),
//           SizedBox(
//             child: ReusableText(
//                 text: 'Hello',
//                 style: appStyle(14, Kolors.kDark, FontWeight.normal)),
//           ),
//           Column(
//             children: [
//               AppBar(
//                 title: SizedBox(
//                   child: Center(
//                     child: Column(
//                       children: [
//                         Image.asset(
//                           R.ASSETS_IMAGES_SAMOHVAL_non_shadow_PNG,
//                           fit: BoxFit.cover,
//                         ),
//                         Image.asset(
//                           R.ASSETS_IMAGES_EDUCATION_PNG,
//                           fit: BoxFit.cover,
//                         )
//                       ],
//                     ),
//                   ),
//                 ),
//                 backgroundColor: Colors.transparent,
//                 elevation: 0,
//               ),
//             ],
//           ),
//           Column(
//             crossAxisAlignment: CrossAxisAlignment.end,
//             children: [
//               Switch(
//                 value: false, // giá trị ban đầu của nút chuyển đổi
//                 onChanged: (value) {
//                   // xử lý logic khi thay đổi trạng thái nút chuyển đổi
//                 },
//               ),
//               Icon(Icons.nightlight_round, color: Colors.black),
//             ],
//           ),
//         ],
//       ),
//     );