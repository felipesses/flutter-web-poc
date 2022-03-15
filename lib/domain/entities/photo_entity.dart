class PhotoEntity {
  final String url;

  PhotoEntity({
    required this.url,
  });

  static PhotoEntity fromJson(dynamic map) {
    return PhotoEntity(
      url: map['url'],
    );
  }
}
