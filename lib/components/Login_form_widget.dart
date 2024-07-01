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
        const Text("Email address"),
        const SizedBox(height: 4),
        Row(
          children: [
            const SizedBox(width: 16,),
            SvgPicture.asset(
              'assets/images/icon-email.svg',
              height: 16,
              width: 16,
            ),
            const SizedBox(width: 12,),
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
            )),
          ],
        ),
        const SizedBox(height: 24),
        TextFormField(
          controller: passwordController,
          decoration: const InputDecoration(
              labelText: "Password", hintText: "Enter your password"),
        )
      ],
    );
  }
}
