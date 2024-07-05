import 'package:flutter/material.dart';
import 'package:flutter_link_sharing_app/app_constants/theme.colors.dart';
import 'package:flutter_link_sharing_app/app_constants/theme.typo.dart';
import 'package:flutter_link_sharing_app/components/Login_form_widget.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: 'Link Sharing App',
      theme: ThemeData(
          textTheme: const TextTheme(
            bodySmall: AppTypography.bodyS,
            bodyMedium: AppTypography.bodyM,
            headlineSmall: AppTypography.headingS,
            headlineMedium: AppTypography.headingM,
          ),
          fontFamily: "Instrument Sans"),
      home: const LoginScreen(),
    );
  }
}

/*
*
* LOGIN SCREEN START
* */

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Container(
        constraints: const BoxConstraints.expand(),
        alignment: Alignment.topLeft,
        padding: const EdgeInsets.all(32.0),
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
            ),
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
            ),
            const SizedBox(
              height: 40,
            ),
            const LoginFormWidget()
          ],
        ),
      ),
    );
  }
}

/*
*
* LOGIN SCREEN END
* */
