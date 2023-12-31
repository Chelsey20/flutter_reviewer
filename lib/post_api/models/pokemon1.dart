// To parse this JSON data, do
//
//     final pokemon1 = pokemon1FromJson(jsonString);

import 'dart:convert';

Pokemon1 pokemon1FromJson(String str) => Pokemon1.fromJson(json.decode(str));

String pokemon1ToJson(Pokemon1 data) => json.encode(data.toJson());

class Pokemon1 {
  int count;
  dynamic next;
  dynamic previous;
  List<Result> results;

  Pokemon1({
    required this.count,
    required this.next,
    required this.previous,
    required this.results,
  });

  factory Pokemon1.fromJson(Map<String, dynamic> json) => Pokemon1(
    count: json["count"],
    next: json["next"],
    previous: json["previous"],
    results: List<Result>.from(json["results"].map((x) => Result.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "count": count,
    "next": next,
    "previous": previous,
    "results": List<dynamic>.from(results.map((x) => x.toJson())),
  };
}

class Result {
  String name;
  String url;

  Result({
    required this.name,
    required this.url,
  });

  factory Result.fromJson(Map<String, dynamic> json) => Result(
    name: json["name"],
    url: json["url"],
  );

  Map<String, dynamic> toJson() => {
    "name": name,
    "url": url,
  };
}
