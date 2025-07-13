import 'package:bookly/Core/utils/assets.dart';
import 'package:bookly/constants.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(AssetsFiles.logo, height: 80),
            Spacer(),
            IconButton(
              onPressed: () {
                GoRouter.of(context).push("/searchview");
              },
              icon: const Icon(
                FontAwesomeIcons.magnifyingGlass,
                size: 25,
                color: textSecondaryColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
