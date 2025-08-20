import 'package:flutter/foundation.dart';

import '../models/product.dart';
import '../models/store.dart';

class PharmacyProvider extends ChangeNotifier {
  int _selectedIndex = 0;
  int _selectedCategoryIndex = 0;

  final List<Product> _cart = [];

  // Popular Stores (dummy data for now)
  final List<Store> _popularStores = [
    Store(
      id: '1',
      name: 'Sharma Medical Store',
      location: 'Daulatpura, Ghaziabad',
      imageUrl: 'assets/images/store_1.png',
      rating: 4.5,
      experience: 11,
      medicines: 500,
      isAvailable: true,
    ),
    Store(
      id: '2',
      name: 'Goel Medical Store',
      location: 'Mohanagar, Ghaziabad',
      imageUrl: 'assets/images/store_2.png',
      rating: 4.2,
      experience: 11,
      medicines: 300,
      isAvailable: false,
    ),
    Store(
      id: '3',
      name: 'Sharma Medical Store',
      location: 'Daulatpura, Ghaziabad',
      imageUrl: 'assets/images/store_1.png',
      rating: 4.8,
      experience: 12,
      medicines: 600,
      isAvailable: true,
    ),
  ];

  // Categories
  final List<Product> _categories = [
    Product(
      name: 'Ensure Powder for Adults',
      image: 'assets/images/product_1.png',
      price: 240,
    ),
    Product(
      name: 'Philips Baby Bottles',
      image: 'assets/images/product_2.png',
      price: 240,
    ),
    Product(
      name: 'Ensure Powder for Adults',
      image: 'assets/images/product_1.png',
      price: 240,
    ),
    Product(
      name: 'Philips Baby Bottles',
      image: 'assets/images/product_2.png',
      price: 240,
    ),
    Product(
      name: 'Ensure Powder for Adults',
      image: 'assets/images/product_1.png',
      price: 240,
    ),
    Product(
      name: 'Philips Baby Bottles',
      image: 'assets/images/product_2.png',
      price: 240,
    ),
  ];

  // --- Getters ---
  int get selectedIndex => _selectedIndex;
  int get selectedCategoryIndex => _selectedCategoryIndex;

  List<Product> get cart => _cart;
  List<Store> get popularStores => _popularStores;
  List<Product> get categories => _categories;

  int get cartItemCount => _cart.length;


  void setSelectedIndex(int index) {
    _selectedIndex = index;
    notifyListeners();
  }

  

 
}
