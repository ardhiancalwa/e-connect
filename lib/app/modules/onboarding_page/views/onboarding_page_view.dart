import 'package:e_connect/app/routes/app_pages.dart';
import 'package:e_connect/app/shared/themes/color.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:introduction_screen/introduction_screen.dart';

import '../controllers/onboarding_page_controller.dart';

class OnboardingPageView extends GetView<OnboardingPageController> {
  const OnboardingPageView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: IntroductionScreen(
          pages: [
            PageViewModel(
              title: 'Selamat datang di e-Connect!',
              image: Container(
                height: 500,
                width: 300,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  image: DecorationImage(
                    image: AssetImage('assets/images/items/onboarding_1.jpg'),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              body:
                  'Aplikasi yang membantu Anda mengoptimalkan pengalaman berkendara dengan kendaraan listrik Anda.',
            ),
            PageViewModel(
              title: 'Dengan e-Connect,',
              image: Container(
                height: 500,
                width: 300,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  image: DecorationImage(
                    image: AssetImage('assets/images/items/onboarding_2.jpg'),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              body:
                  'Anda dapat memantau penggunaan daya listrik, menemukan stasiun pengisian daya terdekat, dan mengetahui jarak tempuh yang dapat dicapai dengan sisa daya baterai.',
            ),
            PageViewModel(
              title: 'e-Connect',
              image: Container(
                height: 500,
                width: 300,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  image: DecorationImage(
                    image: AssetImage('assets/images/items/onboarding_3.jpg'),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              body:
                  'e-Connect adalah teman setia yang membantu Anda menjelajahi dunia dengan mudah dan ramah lingkungan.',
            ),
          ],
          infiniteAutoScroll: false,
          allowImplicitScrolling: true,
          done: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: secondaryColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
            ),
            onPressed: () {
              Get.offAllNamed(Routes.LOGIN_PAGE);
            },
            child: Text(
              'Done',
              style: TextStyle(color: whiteColor),
            ),
          ),
          onDone: () {
            Get.offAllNamed(Routes.HOME);
          },
          next: Text(
            'Next',
            style: TextStyle(color: primaryColor),
          ),
          showBackButton: false,
          showSkipButton: true,
          showNextButton: true,
          back: const Icon(Icons.arrow_back),
          skip: Text('Skip',
              style: TextStyle(
                  fontWeight: FontWeight.w400, color: secondaryColor)),
          curve: Curves.fastLinearToSlowEaseIn,
          controlsMargin: const EdgeInsets.symmetric(horizontal: 16),
          // controlsPosition: Position(left: 0, right: 0, bottom: 50),
          dotsDecorator: DotsDecorator(
            activeColor: primaryColor,
            size: Size(10.0, 10.0),
            color: whiteColor,
            activeSize: Size(22.0, 10.0),
            activeShape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(25.0),
              ),
            ),
          ),
        ));
  }
}
