import 'package:flutter/material.dart';

class CategoryChips extends StatefulWidget {
  final ValueChanged<String> onCategorySelected;

  const CategoryChips({super.key, required this.onCategorySelected});

  @override
  State<CategoryChips> createState() => _CategoryChipsState();
}

class _CategoryChipsState extends State<CategoryChips> {
  String selectedCategory = "Medicine";

  final categories = [
    "Antibiotics",
    "Treatment",
    "Ayurvedic",
    "General Care"
    "Medicine",
    "Cosmetics",
    "Daily Products",
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.symmetric(horizontal: 16),
        itemCount: categories.length,
        separatorBuilder: (_, __) => SizedBox(width: 12),
        itemBuilder: (context, index) {
          final category = categories[index];
          final isSelected = category == selectedCategory;

          return ChoiceChip(
            label: Text(
              category,
              style: TextStyle(
                color: isSelected ? Colors.green[700] : Colors.black87,
                fontWeight: isSelected ? FontWeight.w600 : FontWeight.w500,
              ),
            ),
            selected: isSelected,
            selectedColor: Colors.green.withOpacity(0.15), // Very light green
            backgroundColor: Colors.grey[200],
            showCheckmark: false, // Remove checkmark icon
            onSelected: (_) {
              setState(() {
                selectedCategory = category;
              });
              widget.onCategorySelected(category);
            },
            side: isSelected
                ? BorderSide(color: Colors.green, width: 1)
                : BorderSide(color: Colors.grey.shade300),
          );
        },
      ),
    );
  }
}
