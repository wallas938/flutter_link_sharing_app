import 'package:flutter/material.dart';
import 'package:flutter_link_sharing_app/app_constants/theme.colors.dart';

class LinksView extends StatefulWidget {
  const LinksView({super.key});

  @override
  State<LinksView> createState() => _LinksViewState();
}

class _LinksViewState extends State<LinksView> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Padding(
        padding: EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Customize your links',
              style: TextStyle(
                  color: AppColors.darkGrey,
                  fontSize: 24,
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.w700,
                  height: 0),
            ),
            SizedBox(height: 8,),
            SizedBox(
              width: 295,
              child: Text(
                textAlign: TextAlign.justify,
                'Add/edit/remove links below and then share all your profiles with the world!',
                style: TextStyle(
                    color: AppColors.grey,
                    fontSize: 16,
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.w400,),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
