import 'package:assignment_app/screens/home/widgets/build_popular_store.dart';
import 'package:assignment_app/screens/home/widgets/flash_cards.dart';
import 'package:assignment_app/screens/home/widgets/membership_card.dart';
import 'package:assignment_app/screens/home/widgets/my_app_bar.dart';
import 'package:assignment_app/screens/home/widgets/referal_card.dart';
import 'package:assignment_app/screens/home/widgets/search_bar_widget.dart';
import 'package:assignment_app/widgets/banner_widget.dart';
import 'package:assignment_app/widgets/category_chips.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../providers/pharmacy_provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<PharmacyProvider>(
      builder: (context, provider, child) {
        return Scaffold(
          backgroundColor: Colors.white,
          body: Column(
            children: [
              Stack(
                clipBehavior: Clip.none,
                children: [
                  const MyAppBar(),
                  const Positioned(
                    bottom: -25,
                    left: 24,
                    right: 24,
                    child: SearchBarWidget(),
                  ),
                ],
              ),

              const SizedBox(height: 26),

              Expanded(
                child: SingleChildScrollView(
                  padding: EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: double.infinity,
                        child: Image.asset(
                          "assets/images/recommend_image.png",
                          fit: BoxFit.cover, // makes the image cover full width
                        ),
                      ),
                      const SizedBox(height: 20),

                      CategoryChips(onCategorySelected: (category) {}),
                      const SizedBox(height: 20),

                      const BannerWidget(),
                      const SizedBox(height: 20),

                      const BuildPopularStore(),
                      const SizedBox(height: 20),

                      const ReferalCard(),
                      const SizedBox(height: 20),

                      ProductCardList(products: provider.categories),
                      const SizedBox(height: 20),

                      const MembershipCard(),
                    ],
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
