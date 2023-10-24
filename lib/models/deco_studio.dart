class DecoStudio {
  const DecoStudio({
    required this.id,
    required this.name,
    required this.description,
    required this.images,
    required this.comments,
  });

  final String id;
  final String name;
  final String description;
  final List<String> images;
  final List<String> comments;
}
