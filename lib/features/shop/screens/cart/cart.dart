import 'package:charibazarapp/common/widgets/appbar/appbar.dart';
import 'package:charibazarapp/common/widgets/checkout/checkout.dart';

import 'package:charibazarapp/features/shop/screens/cart/widgets/cart_items.dart';
import 'package:charibazarapp/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';




class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: TAppBar(
        showBackArrow: true,
        title: Text('Cart', style: Theme.of(context).textTheme.headlineSmall)),
      body: const Padding(padding: EdgeInsets.all(TSizes.defaultSpace),
        child: CartItems(),
      ),

      /// Checkout Button
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(TSizes.defaultSpace),
        child: ElevatedButton(onPressed: () => Get.to(() => const CheckoutScreen()), child: const Text('Checkout Rs 250')),
      ),

    );
  }
}






