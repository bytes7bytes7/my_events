import 'dart:typed_data';

class Event {
  const Event({
    required this.id,
    required this.title,
    required this.place,
    required this.startsAt,
    required this.endsAt,
    required this.image,
    required this.icon,
  });

  final String id;
  final String title;
  final String place;
  final DateTime startsAt;
  final DateTime endsAt;
  final Uint8List image;
  final Uint8List icon;
}
