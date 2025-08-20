  import 'package:assignment_app/providers/pharmacy_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

  class BuildPopularStore extends StatelessWidget {
  const BuildPopularStore({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<PharmacyProvider>(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Popular Store',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            TextButton(
              onPressed: () {},
              child: Text(
                'See all',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.green[700],
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ],
        ),

        ListView.builder(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          padding: EdgeInsets.zero,
          itemCount: provider.popularStores.length,
          itemBuilder: (context, index) {
            final store = provider.popularStores[index];

            return Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
              elevation: 1,
              margin: EdgeInsets.only(bottom: 12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.all(12),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Store logo
                        ClipRRect(
                          borderRadius: BorderRadius.circular(40),
                          child: store.imageUrl.isNotEmpty
                              ? Image.asset(
                                  store.imageUrl,
                                  width: 50,
                                  height: 50,
                                  fit: BoxFit.cover,
                                  errorBuilder: (context, error, stackTrace) {
                                    return Container(
                                      width: 50,
                                      height: 50,
                                      color: Colors.grey[200],
                                      child: Icon(
                                        Icons.local_pharmacy,
                                        color: Colors.green,
                                        size: 28,
                                      ),
                                    );
                                  },
                                )
                              : Container(
                                  width: 50,
                                  height: 50,
                                  decoration: BoxDecoration(
                                    color: Colors.grey[200],
                                    shape: BoxShape.circle,
                                  ),
                                  child: Icon(
                                    Icons.local_pharmacy,
                                    color: Colors.green,
                                    size: 28,
                                  ),
                                ),
                        ),

                        SizedBox(width: 12),

                        // Store name + location
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                store.name,
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                ),
                              ),
                              SizedBox(height: 2),
                              Text(
                                store.location,
                                style: TextStyle(
                                  color: Colors.grey[600],
                                  fontSize: 13,
                                ),
                              ),
                            ],
                          ),
                        ),

                        // Right Column: Favorite + Add to Cart
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Icon(
                              Icons.favorite_border,
                              color: Colors.grey[500],
                              size: 22,
                            ),
                            SizedBox(height: 6),
                            ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Color(0xff69cea4),
                                foregroundColor: Colors.white,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(14),
                                ),
                                padding: EdgeInsets.symmetric(
                                  horizontal: 16,
                                  vertical: 6,
                                ),
                              ),
                              child: Text(
                                'Add to Cart',
                                style: TextStyle(fontSize: 13),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),

                  // Bottom grey row
                  Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.grey[200], // light grey footer
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(16),
                        bottomRight: Radius.circular(16),
                      ),
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 12, vertical: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        // ✅ Availability
                        Icon(
                          Icons.circle,
                          size: 10,
                          color: store.isAvailable ? Colors.green : Colors.red,
                        ),
                        Text(
                          store.isAvailable ? "Available" : "Not Available",
                          style: TextStyle(
                            color: store.isAvailable
                                ? Colors.green[700]
                                : Colors.red,
                            fontSize: 13,
                            fontWeight: FontWeight.w500,
                          ),
                        ),

                        SizedBox(width: 16),

                        // ✅ Experience
                        Icon(
                          Icons.circle,
                          size: 8,
                          color: Colors.green, // always green
                        ),
                        Text(
                          "${store.experience} Years Exp",
                          style: TextStyle(
                            fontSize: 13,
                            color: Colors.green[700], // green text
                          ),
                        ),

                        SizedBox(width: 16),
                        Icon(
                          Icons.circle,
                          size: 8,
                          color: Colors.green, // always green
                        ),
                        Text(
                          "${store.medicines}+ Medicine",
                          style: TextStyle(
                            fontSize: 13,
                            color: Colors.green[700], // green text
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ],
    );
  }
}

