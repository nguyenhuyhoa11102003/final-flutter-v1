class User {
  final String? id;
  String image;
  String name;
  String email;
  String phone;
  String aboutMeDescription;

  User({
    this.id,
    required this.image,
    required this.name,
    required this.email,
    required this.phone,
    required this.aboutMeDescription,
  });

  User copy({
    String? imagePath,
    String? name,
    String? phone,
    String? email,
    String? about,
  }) =>
      User(
        image: imagePath ?? this.image,
        name: name ?? this.name,
        email: email ?? this.email,
        phone: phone ?? this.phone,
        aboutMeDescription: about ?? this.aboutMeDescription,
      );

  static User fromJson(Map<String, dynamic> json) => User(
        id:  json["id"],
        image: json['imagePath'] ?? '',
        name: json['name'] ?? '',
        email: json['email'] ?? '',
        aboutMeDescription: json['about'] ?? '',
        phone: json['phone'] ?? '',
      );

  Map<String, dynamic> toJson() => {
        'id' :  id,
        'imagePath': image,
        'name': name,
        'email': email,
        'about': aboutMeDescription,
        'phone': phone,
      };
}
