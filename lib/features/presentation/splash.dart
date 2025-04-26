import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_svg/flutter_svg.dart'; // لإظهار SVG

import '../../core/constant/app_constant.dart';
import '../../core/utils/app_assets.dart';
import '../../core/utils/app_colors.dart';
import 'lets_start.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  _OnboardingState createState() => _OnboardingState();
}

class _OnboardingState extends State<Splash> {
  @override
  void initState() {
    super.initState();

    Future.delayed(Duration(seconds: 3), () {
      Get.off(() => Lets(), transition: Transition.fade, duration: Duration(milliseconds: 500));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [

            SvgPicture.asset(
              AppAssets.splash,
              width: 200,
              height: 200,
            ),
            const SizedBox(height: 30),
            Text(
              AppConstant.app_name,
              style: TextStyle(
                fontWeight: FontWeight.w900,
                fontSize: 36,
                color: AppColors.primary,
              ),
            ),
          ],
        ),
      ),
    );
  }
}