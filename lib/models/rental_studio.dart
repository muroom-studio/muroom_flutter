class RentalStudio {
  const RentalStudio({
    required this.id,
    required this.name,
    required this.address,
    required this.description,
    required this.price,
    required this.images,
    required this.reviews,
    required this.rules,
  });

  final String id;
  final String name;
  final String address;
  final String description;
  final int price;
  final List<String> images;
  final List<String> reviews;
  final List<String> rules;
}
