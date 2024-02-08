// To parse this JSON data, do
//
//     final welcome = welcomeFromJson(jsonString);

class UserModel {
    int? id;
    String? name;
    String? email;
    String? body;

    UserModel({
        required this.id,
        required this.name,
        required this.email,
        required this.body,
    });

    factory UserModel.fromJson(Map<String, dynamic> json) => UserModel(
        id: json["id"],
        name: json["name"],
        email: json["email"],
        body: json["body"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "email": email,
        "body": body,
    };
}
