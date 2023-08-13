class User {
  const User({
    required this.id,
    required this.firstName,
    required this.lastName,
    this.middleName,
    this.avatarUrl,
  });

  final String id;
  final String firstName;
  final String lastName;
  final String? middleName;
  final String? avatarUrl;
}
