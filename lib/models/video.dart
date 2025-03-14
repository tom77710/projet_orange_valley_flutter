import 'dart:convert';

List<Video> videoFromJson(String str) =>
    List<Video>.from(json.decode(str).map((x) => Video.fromJson(x)));

String videoToJson(List<Video> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Video {
  Video({
    required this.id,
    required this.videoUrl,
    required this.name,
    required this.description,
    required this.duration,
    required this.createdBy,
    required this.image,
    required this.thumbnail,
    required this.cropped,
    required this.fileNameOriginal,
    required this.popularity,
    required this.categoryId,
    required this.category,
    required this.keywords,
  });

  String id;
  String videoUrl;
  String name;
  String description;
  String duration;
  String createdBy;
  String image;
  String thumbnail;
  String cropped;
  String fileNameOriginal;
  String popularity;
  String categoryId;
  String category;
  List<String> keywords;

  factory Video.fromJson(Map<String, dynamic> json) => Video(
    id: json["id"],
    videoUrl: json["videoUrl"],
    name: json["name"],
    description: json["description"],
    duration: json["duration"],
    createdBy: json["createdBy"],
    image: json["image"],
    thumbnail: json["thumbnail"],
    cropped: json["cropped"],
    fileNameOriginal: json["fileNameOriginal"],
    popularity: json["popularity"],
    categoryId: json["categoryId"],
    category: json["category"],
    keywords: List<String>.from(json["keywords"].map((x) => x)),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "videoUrl": videoUrl,
    "name": name,
    "description": description,
    "duration": duration,
    "createdBy": createdBy,
    "image": image,
    "thumbnail": thumbnail,
    "cropped": cropped,
    "fileNameOriginal": fileNameOriginal,
    "popularity": popularity,
    "categoryId": categoryId,
    "category": category,
    "keywords": List<dynamic>.from(keywords.map((x) => x)),
  };
}
