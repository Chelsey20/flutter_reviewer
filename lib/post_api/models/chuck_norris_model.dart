// To parse this JSON data, do
//
//     final chuckNorris = chuckNorrisFromJson(jsonString);

import 'dart:convert';

ChuckNorris chuckNorrisFromJson(String str) => ChuckNorris.fromJson(json.decode(str));

String chuckNorrisToJson(ChuckNorris data) => json.encode(data.toJson());

class ChuckNorris {
  List<dynamic> categories;
  DateTime createdAt;
  String iconUrl;
  String id;
  DateTime updatedAt;
  String url;
  String value;

  ChuckNorris({
    required this.categories,
    required this.createdAt,
    required this.iconUrl,
    required this.id,
    required this.updatedAt,
    required this.url,
    required this.value,
  });

  factory ChuckNorris.fromJson(Map<String, dynamic> json) => ChuckNorris(
    categories: List<dynamic>.from(json["categories"].map((x) => x)),
    createdAt: DateTime.parse(json["created_at"]),
    iconUrl: json["icon_url"],
    id: json["id"],
    updatedAt: DateTime.parse(json["updated_at"]),
    url: json["url"],
    value: json["value"],
  );

  Map<String, dynamic> toJson() => {
    "categories": List<dynamic>.from(categories.map((x) => x)),
    "created_at": createdAt.toIso8601String(),
    "icon_url": iconUrl,
    "id": id,
    "updated_at": updatedAt.toIso8601String(),
    "url": url,
    "value": value,
  };
}
