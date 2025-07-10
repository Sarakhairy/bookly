import 'package:bookly/Core/utils/assets.dart';
import 'package:bookly/Features/home/presentation/views/home_view.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashViewWidget extends StatefulWidget {
  const SplashViewWidget({super.key});

  @override
  State<SplashViewWidget> createState() => _SplashViewWidgetState();
}

class _SplashViewWidgetState extends State<SplashViewWidget>{
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 3), () {
      Get.to(() => HomeView(), transition: Transition.fadeIn, duration: const Duration(milliseconds: 500));
    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset(AssetsFiles.logo, height: 300, width: 400),
        
      ],
    );
  }
}
