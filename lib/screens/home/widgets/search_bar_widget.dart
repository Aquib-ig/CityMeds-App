import 'package:flutter/material.dart';

class SearchBarWidget extends StatelessWidget {
  const SearchBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(14),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1), // soft shadow
            blurRadius: 6,
            offset: Offset(0, 3), // subtle bottom shadow
          ),
        ],
      ),
      child: TextField(
        decoration: InputDecoration(
          hintText: 'Search Store & Health Products',
          prefixIcon: Icon(Icons.search, color: Colors.grey[600]),
          border: InputBorder.none, // removes default borders
          contentPadding: EdgeInsets.symmetric(
            vertical: 14,
            horizontal: 16,
          ),
        ),
      ),
    );
  }
}
