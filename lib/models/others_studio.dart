class OthersStudio {
  const OthersStudio({
    required this.id,
    required this.user,
    required this.profileImage,
    required this.description,
    required this.images,
    required this.comments,
  });

  final String id;
  final String user;
  final String profileImage;
  final String description;
  final List<String> images;
  final List<String> comments;
}
