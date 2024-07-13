import 'package:flutter/material.dart';
import 'package:flutter_link_sharing_app/app_constants/theme.colors.dart';
import 'package:flutter_link_sharing_app/app_constants/theme.typo.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PreviewPage extends StatefulWidget {
  const PreviewPage({super.key});

  @override
  State<PreviewPage> createState() => _PreviewPageState();
}

class _PreviewPageState extends State<PreviewPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          /*** PREVIEW_HEADER_ACTIONS ***/
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              /*** BACK_TO_EDITOR_BUTTON ***/
              Expanded(
                  child: TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      style: TextButton.styleFrom(
                          padding: const EdgeInsets.symmetric(
                              vertical: 11, horizontal: 27),
                          side: const BorderSide(
                              width: 1, color: AppColors.purple),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8))),
                      child: const Text("Back to Editor"))),
              const SizedBox(width: 16),
              /*** SHARE_LINK_BUTTON ***/
              Expanded(
                  child: TextButton(
                      onPressed: () {},
                      style: TextButton.styleFrom(
                          backgroundColor: AppColors.purple,
                          padding: const EdgeInsets.symmetric(
                              vertical: 11, horizontal: 27),
                          side: const BorderSide(
                              width: 1, color: AppColors.purple),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8))),
                      child: Text(
                        "Share Link",
                        style: AppTypography.headingS(AppColors.white),
                      ))),
            ],
          ),
        ),
        body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Container(
            width: double.infinity,
            padding: const EdgeInsets.only(top: 60),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                /*** FIRST_SECTION ***/
                Column(
                  children: [
                    /*** USER_AVATAR ***/
                    Center(
                      child: Container(
                        width: 104,
                        height: 104,
                        padding: const EdgeInsets.all(4),
                        // Border width
                        decoration: const BoxDecoration(
                            color: AppColors.purple, shape: BoxShape.circle),
                        child: ClipOval(
                          child: SizedBox.fromSize(
                            child: Image.asset(
                                'assets/images/image-profile-test.webp',
                                fit: BoxFit.cover),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    /*** USERNAME ***/
                    Text(
                      "Ben Wright",
                      style: AppTypography.headingM(AppColors.darkGrey),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    /*** EMAIL ***/
                    Text(
                      "ben@example.com",
                      style: AppTypography.bodyM(AppColors.grey),
                    ),
                    const SizedBox(
                      height: 56,
                    ),
                    /*** GITHUB_LINK ***/
                    Container(
                      width: 237,
                      height: 56,
                      decoration: BoxDecoration(
                          color: const Color.fromRGBO(26, 26, 26, 1),
                          borderRadius: BorderRadius.circular(8)),
                      padding: const EdgeInsets.all(16),
                      child: Row(
                        children: [
                          SvgPicture.asset(
                            width: 20,
                            "assets/images/icon-github.svg",
                            colorFilter: const ColorFilter.mode(
                                AppColors.white, BlendMode.srcIn),
                          ),
                          const SizedBox(width: 8),
                          Expanded(
                            child: Text(
                              "GitHub",
                              style: AppTypography.bodyM(AppColors.white),
                            ),
                          ),
                          const SizedBox(
                            width: 8,
                          ),
                          SvgPicture.asset("assets/images/icon-arrow-right.svg"),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    /*** YOUTUBE_LINK ***/
                    Container(
                      width: 237,
                      height: 56,
                      decoration: BoxDecoration(
                          color: const Color.fromRGBO(238, 57, 57, 1),
                          borderRadius: BorderRadius.circular(8)),
                      padding: const EdgeInsets.all(16),
                      child: Row(
                        children: [
                          SvgPicture.asset(
                            width: 20,
                            "assets/images/icon-youtube.svg",
                            colorFilter: const ColorFilter.mode(
                                AppColors.white, BlendMode.srcIn),
                          ),
                          const SizedBox(width: 8),
                          Expanded(
                            child: Text(
                              "Youtube",
                              style: AppTypography.bodyM(AppColors.white),
                            ),
                          ),
                          const SizedBox(
                            width: 8,
                          ),
                          SvgPicture.asset("assets/images/icon-arrow-right.svg"),
                        ],
                      ),
                    ),
                    /*** LINKEDIN_LINK ***/
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                      width: 237,
                      height: 56,
                      decoration: BoxDecoration(
                          color: const Color.fromRGBO(45, 104, 255, 1),
                          borderRadius: BorderRadius.circular(8)),
                      padding: const EdgeInsets.all(16),
                      child: Row(
                        children: [
                          SvgPicture.asset(
                            width: 20,
                            "assets/images/icon-linkedin.svg",
                            colorFilter: const ColorFilter.mode(
                                AppColors.white, BlendMode.srcIn),
                          ),
                          const SizedBox(width: 8),
                          Expanded(
                            child: Text(
                              "LinkedIn",
                              style: AppTypography.bodyM(AppColors.white),
                            ),
                          ),
                          const SizedBox(
                            width: 8,
                          ),
                          SvgPicture.asset("assets/images/icon-arrow-right.svg"),
                        ],
                      ),
                    ),
                    /*** DEV.TO_LINK ***/
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                      width: 237,
                      height: 56,
                      decoration: BoxDecoration(
                          color: AppColors.darkGrey,
                          borderRadius: BorderRadius.circular(8)),
                      padding: const EdgeInsets.all(16),
                      child: Row(
                        children: [
                          SvgPicture.asset(
                            width: 20,
                            "assets/images/icon-devto.svg",
                            colorFilter: const ColorFilter.mode(
                                AppColors.white, BlendMode.dst),
                          ),
                          const SizedBox(width: 8),
                          Expanded(
                            child: Text(
                              "Dev.to",
                              style: AppTypography.bodyM(AppColors.white),
                            ),
                          ),
                          const SizedBox(
                            width: 8,
                          ),
                          SvgPicture.asset("assets/images/icon-arrow-right.svg"),
                        ],
                      ),
                    ),
                    /*** CODEWARS_LINK ***/
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                      width: 237,
                      height: 56,
                      decoration: BoxDecoration(
                          color: const Color.fromRGBO(138, 26, 80, 1),
                          borderRadius: BorderRadius.circular(8)),
                      padding: const EdgeInsets.all(16),
                      child: Row(
                        children: [
                          SvgPicture.asset(
                            width: 20,
                            "assets/images/icon-codewars.svg",
                            colorFilter: const ColorFilter.mode(
                                AppColors.white, BlendMode.srcIn),
                          ),
                          const SizedBox(width: 8),
                          Expanded(
                            child: Text(
                              "GitHub",
                              style: AppTypography.bodyM(AppColors.white),
                            ),
                          ),
                          const SizedBox(
                            width: 8,
                          ),
                          SvgPicture.asset("assets/images/icon-arrow-right.svg"),
                        ],
                      ),
                    ),
                    /*** FREECODECAMP_LINK ***/
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                      width: 237,
                      height: 56,
                      decoration: BoxDecoration(
                          color: const Color.fromRGBO(48, 34, 103, 1),
                          borderRadius: BorderRadius.circular(8)),
                      padding: const EdgeInsets.all(16),
                      child: Row(
                        children: [
                          SvgPicture.asset(
                            width: 20,
                            "assets/images/icon-freecodecamp.svg",
                            colorFilter: const ColorFilter.mode(
                                AppColors.white, BlendMode.srcIn),
                          ),
                          const SizedBox(width: 8),
                          Expanded(
                            child: Text(
                              "GitHub",
                              style: AppTypography.bodyM(AppColors.white),
                            ),
                          ),
                          const SizedBox(
                            width: 8,
                          ),
                          SvgPicture.asset("assets/images/icon-arrow-right.svg"),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ));
  }
}
