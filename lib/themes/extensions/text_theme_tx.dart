import 'package:flutter/material.dart';

class TextThemeTX extends ThemeExtension<TextThemeTX> {
  const TextThemeTX({
    required this.labelBig,
    required this.labelThin,
  });

  final TextStyle labelBig;
  final TextStyle labelThin;

  @override
  ThemeExtension<TextThemeTX> copyWith({
    TextStyle? labelBig,
    TextStyle? labelThin,
  }) {
    return TextThemeTX(
      labelBig: labelBig ?? this.labelBig,
      labelThin: labelThin ?? this.labelThin,
    );
  }

  @override
  ThemeExtension<TextThemeTX> lerp(
    covariant ThemeExtension<TextThemeTX>? other,
    double t,
  ) {
    if (other is! TextThemeTX) {
      return this;
    }

    return TextThemeTX(
      labelBig: TextStyle.lerp(
        labelBig,
        other.labelBig,
        t,
      )!,
      labelThin: TextStyle.lerp(
        labelThin,
        other.labelThin,
        t,
      )!,
    );
  }
}
