import 'package:flutter/material.dart';

class DiscountScreen extends StatelessWidget {
  const DiscountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('D I S C O U N T'),
        centerTitle: true,
        toolbarHeight: 100,
        backgroundColor: Color(0xFF293543),
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.discount_rounded, size: 100, color: Color(0xff69cea4),),
            SizedBox(height: 20),
            Text(
              'Discount Screen',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Color(0xff69cea4),
              ),
            ),
            SizedBox(height: 10),
            Text(
              'Explore available offers',
              style: TextStyle(fontSize: 16, color: Colors.grey[600]),
            ),
          ],
        ),
      ),
    );
  }
}
