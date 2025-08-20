import 'package:assignment_app/providers/pharmacy_provider.dart';
import 'package:assignment_app/screens/cart/cart_screen.dart';
import 'package:assignment_app/screens/discount/discount_screen.dart';
import 'package:assignment_app/screens/home/home_screen.dart';
import 'package:assignment_app/screens/profile/profile_screen.dart';
import 'package:assignment_app/screens/store/store_screen.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MainScreen extends StatelessWidget {
  final List<Widget> _screens = [
    HomeScreen(),
    StoreScreen(),
    DiscountScreen(), // 👈 reordered to match icons
    CartScreen(),
    ProfileScreen(),
  ];

  MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<PharmacyProvider>(
      builder: (context, provider, child) {
        return Scaffold(
          backgroundColor: Colors.white,

          // ✅ Use IndexedStack so screens keep their state
          body: IndexedStack(index: provider.selectedIndex, children: _screens),

          bottomNavigationBar: CurvedNavigationBar(
            index: provider.selectedIndex,
            height: 60.0,
            items: [
              Icon(
                Icons.home,
                size: 30,
                color: provider.selectedIndex == 0
                    ? const Color(0xff293543)
                    : const Color(0xff69cea4),
              ),
              Icon(
                Icons.shopping_bag,
                size: 30,
                color: provider.selectedIndex == 1
                    ? const Color(0xff293543)
                    : const Color(0xff69cea4),
              ),
              Icon(
                Icons.discount_rounded,
                size: 30,
                color: provider.selectedIndex == 2
                    ? const Color(0xff293543)
                    : const Color(0xff69cea4),
              ),
              Icon(
                Icons.shopping_cart,
                size: 30,
                color: provider.selectedIndex == 3
                    ? const Color(0xff293543)
                    : const Color(0xff69cea4),
              ),
              Icon(
                Icons.person,
                size: 30,
                color: provider.selectedIndex == 4
                    ? const Color(0xff293543)
                    : const Color(0xff69cea4),
              ),
            ],
            color: const Color(0xff293543),
            buttonBackgroundColor: const Color(0xff69cea4),
            backgroundColor: Colors.transparent,
            animationCurve: Curves.easeInOut,
            animationDuration: const Duration(milliseconds: 600),
            onTap: (index) {
              provider.setSelectedIndex(index);
            },
          ),
        );
      },
    );
  }
}
