class User {
  final String userName;
  final String userPermition;

  User({this.userName, this.userPermition});

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      userName: json['name'] as String, 
      userPermition: json['username'] as String,
      );
  }
}