import 'package:flutter/material.dart';
import 'package:flutter_link_sharing_app/app_constants/theme.colors.dart';
import 'package:flutter_link_sharing_app/app_constants/theme.typo.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class LinksView extends StatefulWidget {
  const LinksView({super.key});

  @override
  State<LinksView> createState() => _LinksViewState();
}

class _LinksViewState extends State<LinksView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              /*** PAGE_TITLE ***/
              const Text(
                'Customize your links',
                style: TextStyle(
                    color: AppColors.darkGrey,
                    fontSize: 24,
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.w700,
                    height: 0),
              ),
              const SizedBox(height: 8),
              /*** PAGE_SUBTITLE ***/
              const SizedBox(
                width: 295,
                child: Text(
                  textAlign: TextAlign.justify,
                  'Add/edit/remove links below and then share all your profiles with the world!',
                  style: TextStyle(
                    color: AppColors.grey,
                    fontSize: 16,
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              const SizedBox(height: 24),
              /*** ADD_NEW_LINK BUTTON ***/
              SizedBox(
                width: double.infinity,
                child: OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      side: const BorderSide(color: AppColors.purple, width: 1),
                      shape: RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.circular(8.0), // Forme du bouton
                      ),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 27.0, vertical: 11.0),
                    ),
                    onPressed: () {},
                    child: Text(
                      "+ Add new link",
                      style: AppTypography.headingS(AppColors.purple),
                    )),
              ),
              const SizedBox(height: 24),
              /*** HOW_TO_PLACEHOLDER ***/
              Container(
                constraints: BoxConstraints.loose(const Size(double.infinity, double.infinity)),
                color: AppColors.lightGrey,
                width: double.infinity,
                padding: const EdgeInsets.all(20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset("assets/images/illustration-empty.svg",
                        width: 124.766, height: 80),
                    const SizedBox(height: 24),
                    Text(
                      "Let’s get you started",
                      style: GoogleFonts.instrumentSans(
                          color: AppColors.darkGrey,
                          fontWeight: FontWeight.w700,
                          fontStyle: FontStyle.normal,
                          fontSize: 24,
                          height: 1.5),
                    ),
                    const SizedBox(height: 24),
                    /*** HOW_TO_TEXT ***/
                    SizedBox(
                      child: Text(
                        "Use the “Add new link” button to get started. Once you have more than one link, you can reorder and edit them. We’re here to help you share your profiles with everyone!",
                        style: AppTypography.bodyM(AppColors.grey),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    const SizedBox(height: 25),
                  ],
                ),
              ),
              const SizedBox(height: 46.5),
            ],
          ),
        ),
      ),
    );
  }
}
