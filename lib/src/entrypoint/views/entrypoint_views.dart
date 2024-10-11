import 'package:education_app/common/utils/kcolors.dart';
import 'package:education_app/common/widgets/app_style.dart';
import 'package:education_app/src/entrypoint/controllers/bottom_tab_notifier.dart';
import 'package:education_app/src/home/views/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:provider/provider.dart';

// ignore: must_be_immutable
class AppEntryPoint extends HookWidget {
  AppEntryPoint({super.key});

  List<Widget> pageList = [
    const HomePage(),
    const HomePage(),
    const HomePage(),
    const HomePage(),
    // const WishListPage(),
    // const Profile(),
    // const CartPage(),
  ];

  @override
  Widget build(BuildContext context) {
    // final result = fetchCartCount(context);
    // final data = result.count;

    return Consumer<TabIndexNotifier>(
      builder: (context, tabIndexNotifier, child) {
        return Scaffold(
          body: Stack(
            children: [
              pageList[tabIndexNotifier.index],
              Align(
                alignment: Alignment.bottomCenter,
                child: Theme(
                    data: Theme.of(context)
                        .copyWith(canvasColor: Kolors.kOffWhite),
                    child: BottomNavigationBar(
                      selectedFontSize: 12,
                      elevation: 0,
                      backgroundColor: Kolors.kOffWhite,
                      selectedLabelStyle:
                          appStyle(9, Kolors.kPrimary, FontWeight.w500),
                      showSelectedLabels: true,
                      showUnselectedLabels: false,
                      currentIndex: tabIndexNotifier.index,
                      selectedItemColor: Kolors.kPrimary,
                      unselectedItemColor: Kolors.kGray,
                      unselectedIconTheme:
                          const IconThemeData(color: Colors.black38),
                      onTap: (i) {
                        tabIndexNotifier.setIndex(i);
                      },
                      items: [
                        BottomNavigationBarItem(
                          icon: tabIndexNotifier.index == 0
                              ? const Icon(
                                  AntDesign.home,
                                  color: Kolors.kPrimary,
                                  size: 24,
                                )
                              : const Icon(
                                  AntDesign.home,
                                  color: Kolors.kPrimary,
                                  size: 24,
                                ),
                          label: "Home",
                        ),
                        BottomNavigationBarItem(
                          icon: tabIndexNotifier.index == 1
                              ? Icon(
                                  AntDesign.home,
                                  color: Kolors.kPrimary,
                                  size: 24,
                                )
                              : Icon(
                                  AntDesign.home,
                                  color: Kolors.kPrimary,
                                  size: 24,
                                ),
                          label: "Home",
                        ),
                        BottomNavigationBarItem(
                            icon: tabIndexNotifier.index == 2
                                ? Icon(
                                    Ionicons.heart,
                                    color: const Color.fromRGBO(91, 62, 43, 1),
                                    size: 24,
                                  )
                                : Icon(
                                    Ionicons.heart_outline,
                                  ),
                            label: "Wishlist"),
                        BottomNavigationBarItem(
                            icon: tabIndexNotifier.index == 3
                                ? Icon(
                                    EvilIcons.user,
                                    color: Kolors.kPrimary,
                                    size: 34,
                                  )
                                : Icon(
                                    EvilIcons.user,
                                    size: 34,
                                  ),
                            label: "Profile"),
                        BottomNavigationBarItem(
                            icon: Badge(
                              // label: Text(data.cartCount.toString()),
                              child: tabIndexNotifier.index == 4
                                  ? Icon(
                                      MaterialCommunityIcons.shopping,
                                      color: Kolors.kPrimary,
                                      size: 24,
                                    )
                                  : Icon(
                                      MaterialCommunityIcons.shopping_outline,
                                    ),
                            ),
                            label: "Cart"),
                      ],
                    )),
              )
            ],
          ),
        );
      },
    );
  }
}
