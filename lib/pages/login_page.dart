import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_link_sharing_app/app_constants/theme.colors.dart';
import 'package:flutter_link_sharing_app/app_constants/theme.typo.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        constraints: const BoxConstraints.expand(),
        alignment: Alignment.topLeft,
        padding: const EdgeInsets.all(32.0),
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SvgPicture.asset(
                    'assets/images/logo-devlinks-small.svg',
                    height: 40,
                  ),
                  const SizedBox(width: 7.5),
                  const Text("devlinks", style: AppTypography.headingM)
                ],
              ), // LOGO
              const SizedBox(
                height: 64,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Login",
                    style: GoogleFonts.instrumentSans(
                      fontSize: 24,
                      fontWeight: FontWeight.w700,
                      fontStyle: FontStyle.normal,
                    ),
                  ),
                  const SizedBox(height: 8),
                  const Text(
                    "Add your details below to get back into the app",
                    style: AppTypography.bodyS,
                  )
                ],
              ), // ADD YOUR DETAILS...
              const SizedBox(
                height: 40,
              ),
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
                            Navigator.of(context).pushNamed("/editor");
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
          ),
        ),
      ),
    );
  }
}
