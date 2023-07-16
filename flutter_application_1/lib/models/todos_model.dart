// To parse this JSON data, do
//
//     final welcome = welcomeFromJson(jsonString);

import 'dart:convert';
List<Todos> welcomeFromJson(String str) => List<Todos>.from(json.decode(str).map((x) => Todos.fromJson(x)));
String welcomeToJson(List<Todos> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));
class Todos {
    int? userId;
    int? id;
    String? title;
    bool? completed;
    Todos({
        this.userId,
        this.id,
        this.title,
        this.completed,
    });
    factory Todos.fromJson(Map<String, dynamic> json) => Todos(
        userId: json["userId"],
        id: json["id"],
        title: json["title"],
        completed: json["completed"],
    );
    Map<String, dynamic> toJson() => {
        "userId": userId,
        "id": id,
        "title": title,
        "completed": completed,
    };
}
