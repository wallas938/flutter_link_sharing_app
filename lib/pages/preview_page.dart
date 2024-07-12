import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_link_sharing_app/app_constants/theme.colors.dart';
import 'package:flutter_link_sharing_app/app_constants/theme.typo.dart';

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
            Expanded(
                child: TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(
                        padding: const EdgeInsets.symmetric(
                            vertical: 11, horizontal: 27),
                        side:
                        const BorderSide(width: 1, color: AppColors.purple),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8))),
                    child: const Text("Back to Editor"))),
            const SizedBox(width: 16),
            Expanded(
                child: TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(
                        backgroundColor: AppColors.purple,
                        padding: const EdgeInsets.symmetric(
                            vertical: 11, horizontal: 27),
                        side:
                        const BorderSide(width: 1, color: AppColors.purple),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8))),
                    child: Text(
                      "Share Link",
                      style: AppTypography.headingS(AppColors.white),
                    ))),
          ],
        ),
      ),
    );
  }
}
