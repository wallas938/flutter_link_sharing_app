import 'package:flutter/material.dart';
import 'package:flutter_link_sharing_app/app_constants/theme.colors.dart';
import 'package:flutter_link_sharing_app/app_constants/theme.typo.dart';
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
          textTheme: TextTheme(
              bodySmall: AppTypography.bodyS,
              bodyMedium: AppTypography.bodyM,
              headlineSmall: AppTypography.headingS,
              headlineMedium: AppTypography.headingM)),
      home: const LoginScreen(),
    );
  }
}

/*
*
* LOGIN SCREEN START
* */

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: AppBar(
        backgroundColor: AppColors.red,
        title: const Text("LINK SHARING APP"),
      ),
      body: Expanded(
        flex: 1,
        child: Container(
          color: Colors.redAccent,
          padding: const EdgeInsets.all(32.0),
          margin: const EdgeInsets.fromLTRB(0, 0, 0, 64),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Expanded(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      child: SvgPicture.asset(
                        'assets/images/logo-devlinks-small.svg',
                        width: 40,
                      ),
                    ),
                    Text("devlinks", style: AppTypography.headingM)
                  ],
                ),
              )
            ],
          ),
        ),
      )
    );
  }
}

/*
*
* LOGIN SCREEN END
* */
