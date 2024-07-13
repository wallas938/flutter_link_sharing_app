import 'package:flutter/material.dart';
import 'package:flutter_link_sharing_app/app_constants/theme.colors.dart';
import 'package:flutter_link_sharing_app/app_constants/theme.typo.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProfileView extends StatefulWidget {
  const ProfileView({super.key});

  @override
  State<ProfileView> createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView> {
  final _formKey = GlobalKey<FormState>();
  final _firstnameController = TextEditingController();
  final _lastnameController = TextEditingController();
  final _emailController = TextEditingController();

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
                'Profile Details',
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
                  'Add your details to create a personal touch to your profile.',
                  style: TextStyle(
                    color: AppColors.grey,
                    fontSize: 16,
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              const SizedBox(height: 40),
              /*** HOW_TO_PLACEHOLDER ***/
              Container(
                // constraints: BoxConstraints.loose(const Size(double.infinity, double.infinity)),
                color: AppColors.lightGrey,
                width: double.infinity,
                padding: const EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    /*** PICTURE_LABEL ***/
                    Text("Profile picture",
                        style: AppTypography.bodyM(Colors.grey)),
                    const SizedBox(height: 16),
                    /*** PICTURE_PLACEHOLDER ***/
                    Container(
                      padding: const EdgeInsets.fromLTRB(39, 61, 38, 60),
                      decoration: BoxDecoration(
                          color: AppColors.lightPurple,
                          borderRadius: BorderRadius.circular(12)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SvgPicture.asset(
                            "assets/images/icon-upload-image.svg",
                            width: 40,
                            height: 40,
                          ),
                          Text(
                            "+ Upload Image",
                            style: AppTypography.headingS(AppColors.purple),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(height: 24),
                    /*** PICTURE_CONSTRAINTS_TEXT ***/
                    Text(
                      "Image must be below 1024x1024px. Use PNG or JPG format.",
                      style: AppTypography.bodyS(AppColors.grey),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 24),
              /*** USER_FORM_INFOS ***/
              Form(
                key: _formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "First name*",
                      style: AppTypography.bodyS(AppColors.darkGrey),
                    ),
                    const SizedBox(height: 4),
                    /*** FIRSTNAME_INPUT ***/
                    TextFormField(
                      decoration: InputDecoration(
                        contentPadding: const EdgeInsets.symmetric(
                            vertical: 12, horizontal: 16),
                        focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                              color: AppColors.borders1, width: 1.0),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                              color: AppColors.borders1, width: 1.0),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                      ),
                      controller: _firstnameController,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "Please enter some text";
                        }
                        return null;
                      },
                    ),
                    const SizedBox(height: 12),
                    Text(
                      "Last name*",
                      style: AppTypography.bodyS(AppColors.darkGrey),
                    ),
                    const SizedBox(height: 4),
                    /*** LASTNAME_INPUT ***/
                    TextFormField(
                      controller: _lastnameController,
                      decoration: InputDecoration(
                        contentPadding: const EdgeInsets.symmetric(
                            vertical: 12, horizontal: 16),
                        focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                              color: AppColors.borders1, width: 1.0),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                              color: AppColors.borders1, width: 1.0),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "Please enter some text";
                        }
                        return null;
                      },
                    ),
                    const SizedBox(height: 12),
                    Text(
                      "Email*",
                      style: AppTypography.bodyS(AppColors.darkGrey),
                    ),
                    const SizedBox(height: 4),
                    /*** EMAIL_INPUT ***/
                    TextFormField(
                      controller: _emailController,
                      decoration: InputDecoration(
                        contentPadding: const EdgeInsets.symmetric(
                            vertical: 12, horizontal: 16),
                        focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                              color: AppColors.borders1, width: 1.0),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                              color: AppColors.borders1, width: 1.0),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "Please enter some text";
                        }
                        return null;
                      },
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
