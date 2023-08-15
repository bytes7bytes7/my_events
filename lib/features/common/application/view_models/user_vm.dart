import 'dart:typed_data';

class UserVM {
  const UserVM({
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

  String get fullName {
    final parts = [firstName, middleName, lastName].where((e) => e != null);

    return parts.join(' ');
  }
}
