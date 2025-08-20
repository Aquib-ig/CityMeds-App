import 'package:flutter/material.dart';

class CheckoutCard extends StatelessWidget {
  const CheckoutCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
        side: BorderSide(color: Colors.green.shade200),
      ),
      elevation: 0,
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Header
            Row(
              children: [
                Icon(Icons.access_time, color: Colors.green),
                const SizedBox(width: 8),
                Text(
                  "Free delivery in 18 minutes",
                  style: TextStyle(
                    color: Colors.green,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 12),

            // Product 1
            _buildProductItem(
              image: "assets/images/product_1.png",
              name: "Ensure Powder for Adults",
              details: "1 Packet",
            ),
            const Divider(),

            // Product 2
            _buildProductItem(
              image: "assets/images/product_2.png",
              name: "Philips Baby Bottles",
              details: "1 Bottle",
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildProductItem({
    required String image,
    required String name,
    required String details,
  }) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Product Image
        ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: Image.asset(image, width: 50, height: 50, fit: BoxFit.cover),
        ),
        const SizedBox(width: 12),

        // Product Info
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                name,
                style: const TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 14,
                ),
              ),
              const SizedBox(height: 4),
              Text(details, style: const TextStyle(color: Colors.grey)),
              const SizedBox(height: 4),
              Text(
                "Move to wishlist",
                style: TextStyle(
                  color: Colors.grey.shade600,
                  fontSize: 12,
                  decoration: TextDecoration.underline,
                ),
              ),
            ],
          ),
        ),

        // Quantity Counter
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            border: Border.all(color: Colors.green),
          ),
          child: Row(
            children: const [
              Icon(Icons.remove, size: 16, color: Colors.green),
              SizedBox(width: 8),
              Text(
                "1",
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  color: Colors.green,
                ),
              ),
              SizedBox(width: 8),
              Icon(Icons.add, size: 16, color: Colors.green),
            ],
          ),
        ),
      ],
    );
  }
}
