import 'package:education_app/common/utils/kcolors.dart';
import 'package:education_app/common/widgets/app_style.dart';
import 'package:education_app/common/widgets/back_button.dart';
import 'package:education_app/common/widgets/reusable_text.dart';
import 'package:education_app/const/resource.dart';
import 'package:education_app/src/home/controllers/home_notifier.dart';
import 'package:education_app/src/home/widgets/explore_product_widget.dart';
import 'package:education_app/src/home/widgets/home_intro_widget.dart';
import 'package:education_app/src/home/widgets/home_slide_widget.dart';
import 'package:education_app/src/home/widgets/home_tabs_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  late final TabController _tabController;
  int _currentTabIndex = 0;

  @override
  void initState() {
    // TabController là một lớp trong Flutter dùng để quản lý trạng thái của TabBar và TabBarView.
    _tabController = TabController(length: homeTabs.length, vsync: this);

    _tabController.addListener(_handleSelection);
    super.initState();
  }

  void _handleSelection() {
    final controller = Provider.of<HomeTabNotifier>(context, listen: false);

    if (_tabController.indexIsChanging) {
      setState(() {
        _currentTabIndex = _tabController.index;
      });
      controller.setIndex(homeTabs[_currentTabIndex]);
    }
  }

  @override
  void dispose() {
    _tabController.removeListener(_handleSelection);
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
                gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Color(0xff32C5FF).withOpacity(.2),
                Color(0xffF7B500).withOpacity(0.2),
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
                leading: const AppBackButton(),
                actions: [
                  Padding(
                    padding: const EdgeInsets.only(right: 8.0),
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: Kolors.kGold),
                        borderRadius: BorderRadius.circular(40),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(40),
                        child: Image.asset(R.ASSETS_IMAGES_PERSON_PNG,
                            width: 30, height: 30),
                      ),
                    ),
                  )
                ],
                backgroundColor: Colors.transparent,
                elevation: 0,
              )
            ],
          ),
          Column(
            children: [
              Padding(
                padding: EdgeInsets.only(top: 120.0, left: 10),
                child: HomeTabs(tabController: _tabController),
              ),
              const Padding(
                padding: EdgeInsets.only(right: 10, left: 10, top: 30),
                child: HomeSlide(),
              ),
              const Padding(
                padding: EdgeInsets.all(10.0),
                child: HomeIntro(),
              ),
              const Padding(
                padding: EdgeInsets.all(10.0),
                child: ExploreProduct(),
              )
            ],
          ),
        ],
      ),
    );
  }
}

List<String> homeTabs = ['GRAMMARS', 'WORDS', 'AUDIO', 'VOCALABATION', 'WORDS'];
