import 'package:charibazarapp/features/authentication/controllers.onboarding/onboarding_controller.dart';
import 'package:charibazarapp/features/authentication/screens/onboarding/onboarding%20widgets/onboarding_dot_navigation.dart';
import 'package:charibazarapp/features/authentication/screens/onboarding/onboarding%20widgets/onboarding_next_button.dart';

import 'package:charibazarapp/features/authentication/screens/onboarding/onboarding%20widgets/onboarding_skip.dart';
import 'package:charibazarapp/utils/constants/colors.dart';
import 'package:charibazarapp/utils/constants/image_strings.dart';
import 'package:charibazarapp/utils/constants/sizes.dart';
import 'package:charibazarapp/utils/constants/text_strings.dart';
import 'package:charibazarapp/utils/device/device_utility.dart';
import 'package:charibazarapp/utils/helpers/helper_functions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:get/get.dart';

import 'onboarding widgets/onboarding_page.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnboardingController());


    return Scaffold(
      body: Stack(
        children: [
          /// Horizontal Scrollable Pages
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.updatePageIndicator,
            children: const [
              OnBoardingPage(image: TImages.onBoardingImage1, title: TTexts.onBoardingTitle1, subTitle: TTexts.onBoardingSubTitle1,),
              OnBoardingPage(image: TImages.onBoardingImage2, title: TTexts.onBoardingTitle2, subTitle: TTexts.onBoardingSubTitle2,),
              OnBoardingPage(image: TImages.onBoardingImage3, title: TTexts.onBoardingTitle3, subTitle: TTexts.onBoardingSubTitle3,),
              // Additional pages can be added here
              // For example, a second onboarding page
                ],
              ),
          /// Skip Button
       const OnBoardingSkip(),

          /// Dot Navigation SmoothPageIndicator
          const OnBoardingNavigation(),

          /// Circular Button
          OnBoardingNextButton(),

        ],
          ),




      );
  }
}








