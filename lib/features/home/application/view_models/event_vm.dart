import 'dart:typed_data';

class EventVM {
  const EventVM({
    required this.id,
    required this.title,
    required this.place,
    required this.period,
    required this.image,
    required this.icon,
  });

  final String id;
  final String title;
  final String place;
  final String period;
  final Uint8List image;
  final Uint8List icon;
}
