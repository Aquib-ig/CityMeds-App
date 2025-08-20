class Store {
  final String id;            // Unique store id (optional, useful later)
  final String name;          // Store name
  final String location;      // Store location
  final String imageUrl;      // Store logo/image
  final double rating;        // Rating (e.g., 4.5)
  final int experience;       // Years of experience
  final int medicines;        // Number of medicines
  final bool isAvailable;     // Store availability

  Store({
    required this.id,
    required this.name,
    required this.location,
    required this.imageUrl,
    required this.rating,
    required this.experience,
    required this.medicines,
    required this.isAvailable,
  });
}
