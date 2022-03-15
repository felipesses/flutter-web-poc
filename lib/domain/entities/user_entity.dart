class UserEntity {
  final int id;
  final String name;
  final String? username;
  final String? phone;

  UserEntity({
    required this.id,
    required this.name,
    this.username,
    this.phone,
  });

  static UserEntity fromJson(dynamic map) {
    return UserEntity(
      id: map['id'],
      name: map['name'],
      username: map['username'],
      phone: map['phone'],
    );
  }
}
