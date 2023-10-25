class DecoStudio {
  const DecoStudio({
    required this.id,
    required this.user,
    required this.description,
    required this.images,
    required this.comments,
  });

  final String id;
  final String user;
  final String description;
  final List<String> images;
  final List<String> comments;
}
