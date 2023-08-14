import 'dart:typed_data';

class OnboardingTipVM {
  const OnboardingTipVM({
    required this.title,
    required this.description,
    required this.image,
  });

  final String title;
  final String description;
  final Uint8List image;
}
