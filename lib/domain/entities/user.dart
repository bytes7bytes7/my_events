import 'dart:typed_data';

class User {
  const User({
    required this.id,
    required this.firstName,
    required this.lastName,
    this.middleName,
    this.avatar,
  });

  final String id;
  final String firstName;
  final String lastName;
  final String? middleName;
  final Uint8List? avatar;
}
