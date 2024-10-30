import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:lottie/lottie.dart';
import 'package:news_app/constants/app_colors.dart';
import 'package:news_app/widgets/sizedBox_widget.dart';
import 'package:news_app/widgets/text_widget.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _navigateToLoginScreen();
  }

  Future<void> _navigateToLoginScreen() async {
    await Future.delayed(
      const Duration(seconds: 15),
    );
    // ignore: use_build_context_synchronously
    GoRouter.of(context).pushReplacement("/login-screen");
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height * 1;
    final width = MediaQuery.sizeOf(context).width * 1;

    return SafeArea(
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "assets/images/splash_pic.jpg",
              fit: BoxFit.cover,
              width: width * 0.9,
              height: height * 0.5,
            ),
            SizedBoxWidget(
              height: height * 0.04,
            ),
            TextWidget(
              text: "TOP HEADLINES",
              fontSize: 17.sp,
              fontWeight: FontWeight.w700,
            ),
            SizedBoxWidget(
              height: height * 0.04,
            ),
            SpinKitChasingDots(
              color: AppColors.tealColor,
              size: 45,
            )
          ],
        ),
      ),
    );
  }
}
