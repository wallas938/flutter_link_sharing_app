import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_link_sharing_app/app_constants/theme.colors.dart';
import 'package:flutter_link_sharing_app/app_constants/theme.typo.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LoginFormWidget extends StatefulWidget {
  const LoginFormWidget({super.key});

  @override
  State<StatefulWidget> createState() => _LoginFormWidget();
}

class _LoginFormWidget extends State<LoginFormWidget> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text("Email address", style: AppTypography.bodyM),
        const SizedBox(height: 4),
        Row(
          children: [
            const SizedBox(
              width: 16,
            ),
            SvgPicture.asset(
              'assets/images/icon-email.svg',
              height: 16,
              width: 16,
            ),
            const SizedBox(
              width: 12,
            ),
            Expanded(
              child: TextFormField(
                style: const TextStyle(
                  fontWeight: FontWeight.w400,
                  fontStyle: FontStyle.normal,
                  fontSize: 16,
                  fontFamily: "Instrument Sans",
                  color: AppColors.darkGrey,
                ),
                controller: emailController,
                decoration: const InputDecoration(
                  hintText: "e.g. alex@email.com",
                  border: InputBorder.none,
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: 24),
        const Text("Password", style: AppTypography.bodyM),
        const SizedBox(height: 4),
        // Email Address Input
        Row(
          children: [
            const SizedBox(
              width: 16,
            ),
            SvgPicture.asset(
              'assets/images/icon-password.svg',
              height: 16,
              width: 16,
            ),
            const SizedBox(
              width: 12,
            ),
            Expanded(
              child: TextFormField(
                obscureText: true,
                style: const TextStyle(
                  fontWeight: FontWeight.w400,
                  fontStyle: FontStyle.normal,
                  fontSize: 16,
                  fontFamily: "Instrument Sans",
                  color: AppColors.darkGrey,
                ),
                controller: passwordController,
                decoration: const InputDecoration(
                  hintText: "Enter your password",
                  border: InputBorder.none,
                ),
              ),
            ),
          ],
        ), // PASSWORD_INPUT
        const SizedBox(
          height: 24,
        ),
        Container(
          width: double.infinity,
          decoration: BoxDecoration(
              color: AppColors.purple,
              borderRadius: BorderRadius.circular(8.0)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [
              TextButton(
                  onPressed: () {
                    if (kDebugMode) {
                      print(emailController.text);
                      print(passwordController.text);
                    }
                  },
                  child: const Text(
                    "Login",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        fontStyle: FontStyle.normal,
                        fontSize: 16,
                        height: 1.5),
                  ))
            ],
          ),
        ),
        const SizedBox(
          height: 24,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Center(
              child: Text("Don’t have an account?"),
            ),
            GestureDetector(
              onTap: () {
                Navigator.of(context).pushNamed("/signup");
              },
              child: const Text(
                "Create account",
                style: TextStyle(
                  color: AppColors.purple,
                  fontWeight: FontWeight.w400,
                  fontStyle: FontStyle.normal,
                  fontSize: 16,
                  fontFamily: "Instrument Sans",
                ),
              ),
            ),
          ],
        ) // SIGN_UP_LINKS
      ],
    );
  }
}