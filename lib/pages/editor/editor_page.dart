import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_link_sharing_app/app_constants/theme.colors.dart';
import 'package:flutter_link_sharing_app/pages/editor/links_view.dart';
import 'package:flutter_link_sharing_app/pages/editor/profile_view.dart';
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
          elevation: 0,
          /*** TAB_BAR_CONTAINER ***/
          bottom: PreferredSize(
            preferredSize: const Size.fromHeight(42),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  /*** LOGO_DEVLINKS ***/
                  SizedBox(
                    child: SvgPicture.asset(
                      'assets/images/logo-devlinks-small.svg',
                    ),
                  ),
                  /*** LINKS_&_PROFILE_TAB ***/
                  TabBar(
                    indicatorPadding: EdgeInsets.zero,
                    labelPadding: EdgeInsets.zero,
                    unselectedLabelColor: AppColors.grey,
                    isScrollable: true,
                    dividerHeight: 0,
                    tabAlignment: TabAlignment.start,
                    indicator: const BoxDecoration(),
                    labelColor: Colors.orange,
                    labelStyle: const TextStyle(
                        fontSize: 18.0, fontWeight: FontWeight.bold),
                    tabs: [
                      Container(
                        decoration: BoxDecoration(
                            color: AppColors.lightPurple,
                            borderRadius: BorderRadius.circular(8)),
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                              vertical: 11, horizontal: 27),
                          child: SvgPicture.asset(
                            'assets/images/icon-link.svg',
                            colorFilter: const ColorFilter.mode(
                                AppColors.purple, BlendMode.srcIn),
                          ),
                        ),
                      ), // LINK_TAB
                      Container(
                        height: 42,
                        padding: const EdgeInsets.symmetric(
                            vertical: 11, horizontal: 27),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8)),
                        child: SvgPicture.asset(
                          'assets/images/icon-profile-header.svg',
                        ),
                      ), // PROFILE_TAB
                    ],
                  ),
                  /*** PREVIEW_TAB ***/
                  GestureDetector(
                    onTap: (){
                      Navigator.pushNamed(context, "/preview");
                    },
                    child: Container(
                      width: 52,
                      height: 42,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          border:
                              Border.all(width: 1.0, color: AppColors.purple)),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 11, horizontal: 16),
                        child: SvgPicture.asset(
                          'assets/images/icon-preview-header.svg',
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              /*** TAB_BAR_VIEWS ***/
              const Expanded(
                child: TabBarView(
                  physics: BouncingScrollPhysics(),
                  children: [
                    LinksView(),
                    ProfileView(),
                  ],
                ),
              ),
              const SizedBox(height: 16),
              /*** SAVE_BUTTON ***/
              Container(
                width: double.infinity,
                padding:
                    const EdgeInsets.symmetric(vertical: 11, horizontal: 27),
                decoration: const BoxDecoration(
                    border: Border(
                        top: BorderSide(color: AppColors.borders1, width: 1))),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Expanded(
                      child: TextButton(
                          onPressed: () {
                            if (kDebugMode) {}
                          },
                          style: TextButton.styleFrom(
                              backgroundColor: AppColors.purple,
                              side: BorderSide.none,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8),
                              )),
                          child: const Text(
                            "Save",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w600,
                                fontStyle: FontStyle.normal,
                                fontSize: 16,
                                height: 1.5),
                          )),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
