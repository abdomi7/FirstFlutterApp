import 'dart:convert';

// To parse this JSON data, do
//
//     final user = userFromJson(jsonString);

List<User> userFromJson(String str) =>
    List<User>.from(json.decode(str).map((x) => User.fromJson(x)));

String userToJson(List<User> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class User {
  User({
    this.userId = 0,
    this.id = 0,
    this.title = "",
    this.body = "",
  });

  int userId;
  int id;
  String title;
  String body;

  factory User.fromJson(Map<String, dynamic> json) => User(
        userId: json["userId"],
        id: json["id"],
        title: json["title"],
        body: json["body"],
      );

  Map<String, dynamic> toJson() => {
        "userId": userId,
        "id": id,
        "title": title,
        "body": body,
      };
}
