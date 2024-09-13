import 'package:flutter/material.dart';

import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/image_strings.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/helpers/helper_functions.dart';
import '../../images/rounded_image.dart';
import '../../texts/brand_title_text_with_verified_icon.dart';
import '../../texts/product_title_text.dart';

class CartItem extends StatelessWidget {
  const CartItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        /// Image
        RoundedImage(imageUrl: TImages.productImage1,
          width: 60,
          height: 60,
          padding: const EdgeInsets.all(TSizes.sm),
          backgroundColor: THelperFunctions.isDarkMode(context) ? TColors.darkerGrey : TColors.light,
        ),
        const SizedBox(height: TSizes.spaceBtwSections),

        /// Title, Price & Size
        Expanded(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const BrandTitleTextWithVerifiedIcon(title: 'Garena'),
              const Flexible(child:  ProductTitleText(title: 'FreeFire Diamond' , maxLines: 1)),
              /// Attributes
              Text.rich(
                TextSpan(
                  children: [
                    TextSpan(text :'Color ', style: Theme.of(context).textTheme.bodySmall),
                    TextSpan(text :'Green ', style: Theme.of(context).textTheme.bodyLarge),
                    TextSpan(text :'Size ', style: Theme.of(context).textTheme.bodySmall),
                    TextSpan(text :'UK 08 ', style: Theme.of(context).textTheme.bodyLarge),
                  ],
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}