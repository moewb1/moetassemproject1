class Phone {
  final String name;
  final String imageUrl;
  final double price;
  final Map<String, double> storageOptions; // Map to store storage options and prices
  final List<String> colorOptions; // List to store color options
  String description;

  Phone({
    required this.name,
    required this.imageUrl,
    required this.price,
    required this.storageOptions,
    required this.colorOptions,
    required this.description,
  });
}
