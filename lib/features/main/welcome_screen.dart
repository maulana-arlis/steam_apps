import 'package:flutter/material.dart';
import '../../core/constants/colors.dart';
import '../../core/constants/images.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 3), () {
      // ignore: use_build_context_synchronously
      Navigator.pushReplacementNamed(context, '/main');
    });

    return Scaffold(
      backgroundColor: AppColors.bgColors,
      body: Padding(
        padding: const EdgeInsets.all(96),
        child: Center(
          child: Image.asset(Images.logo),
        ),
      ),
    );
  }
}
