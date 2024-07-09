import 'package:flutter/material.dart';
import 'package:flutter_link_sharing_app/app_constants/theme.colors.dart';
import 'package:flutter_svg/flutter_svg.dart';

class EditorPage extends StatefulWidget {
  const EditorPage({super.key});

  @override
  State<EditorPage> createState() => _EditorPageState();
}

class _EditorPageState extends State<EditorPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.purple,
          elevation: 0,
          bottom: PreferredSize(
            preferredSize: const Size.fromHeight(42),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SizedBox(
                  child: SvgPicture.asset(
                    'assets/images/logo-devlinks-small.svg',
                  ),
                ),
                TabBar(
                  indicatorPadding: EdgeInsets.zero,
                  labelPadding: EdgeInsets.zero,
                  unselectedLabelColor: AppColors.grey,
                  indicatorColor: Colors.red,
                  isScrollable: true,
                  dividerHeight: 0,
                  tabAlignment: TabAlignment.start,
                  indicator: const BoxDecoration(),
                  labelColor: Colors.orange,
                  labelStyle: const TextStyle(
                      fontSize: 18.0, fontWeight: FontWeight.bold),
                  tabs: [
                    // LOGO_TAB
                    Container(
                      decoration: BoxDecoration(
                          color: AppColors.lightPurple,
                          borderRadius: BorderRadius.circular(8)),
                      child: Container(
                        padding: const EdgeInsets.symmetric(vertical: 11, horizontal: 27),
                        child: SvgPicture.asset(
                          'assets/images/icon-link.svg',
                          colorFilter: const ColorFilter.mode(
                              AppColors.purple, BlendMode.srcIn),
                        ),
                      ),
                    ), // LINK_TAB
                    Container(
                      height: 42,
                      padding: const EdgeInsets.symmetric(vertical: 11, horizontal: 27),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Colors.amber),
                      child: SvgPicture.asset(
                        'assets/images/icon-profile-header.svg',
                      ),
                    ), // PROFILE_TAB
                  ],
                ),
                Container(
                  width: 52,
                  height: 42,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(width: 1.0, color: AppColors.purple)),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 11, horizontal: 16),
                    child: SvgPicture.asset(
                      'assets/images/icon-preview-header.svg',
                    ),
                  ),
                ), // PREVIEW_TAB
              ],
            ),
          ),
        ),
        body: const TabBarView(
          children: [
            Icon(Icons.directions_car),
            Icon(Icons.directions_car),
          ],
        ),
      ),
    ));
  }
}
