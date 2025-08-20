import 'package:assignment_app/providers/pharmacy_provider.dart';
import 'package:assignment_app/screens/checkout/widgets/checkout_app_bar.dart';
import 'package:assignment_app/screens/checkout/widgets/checkout_bottom_sheet.dart';
import 'package:assignment_app/screens/checkout/widgets/checkout_card.dart';
import 'package:assignment_app/screens/checkout/widgets/price_details_card.dart';
import 'package:assignment_app/screens/checkout/widgets/suggested_product.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CheckoutScreen extends StatelessWidget {
  const CheckoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<PharmacyProvider>(
      builder: (context, product, child) {
        return Scaffold(
          backgroundColor: Colors.white,

          body: Column(
            children: [
              CheckoutAppBar(),

              Expanded(
                child: SingleChildScrollView(
                  child: Padding(
                    padding: EdgeInsets.all(16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CheckoutCard(),
                        SizedBox(height: 16),

                        PriceDetailsCard(),
                        SizedBox(height: 16),
                        SuggestedProducts(products: product.categories),
                        SizedBox(height: 100), // Space for bottom button
                      ],
                    ),
                  ),
                ),
              ),
              CheckoutBottomSheet(totalAmount: 1043),
            ],
          ),
        );
      },
    );
  }
}
