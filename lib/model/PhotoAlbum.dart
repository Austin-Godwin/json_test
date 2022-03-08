class PhotoAlbum {
  final String albumId;
  final String id;
  final String title;
  final String url;
  final String thumbnailUrl;

  const PhotoAlbum({
    required this.albumId,
    required this.id,
    required this.title,
    required this.url,
    required this.thumbnailUrl,
  });

  factory PhotoAlbum.fromJson(Map<String, dynamic> json) {
    return PhotoAlbum(
      albumId: json['albumId'].toString(),
      id: json['id'].toString(),
      title: json['title'],
      url: json['url'],
      thumbnailUrl: json['thumbnailUrl'],
    );
  }
}
