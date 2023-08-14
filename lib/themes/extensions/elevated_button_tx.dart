import 'package:flutter/material.dart';

class ElevatedButtonTX extends ThemeExtension<ElevatedButtonTX> {
  const ElevatedButtonTX({
    required this.secondary,
  });

  final ButtonStyle secondary;

  @override
  ThemeExtension<ElevatedButtonTX> copyWith({
    ButtonStyle? secondary,
  }) {
    return ElevatedButtonTX(secondary: secondary ?? this.secondary);
  }

  @override
  ThemeExtension<ElevatedButtonTX> lerp(
    covariant ThemeExtension<ElevatedButtonTX>? other,
    double t,
  ) {
    if (other is! ElevatedButtonTX) {
      return this;
    }

    return ElevatedButtonTX(
      secondary: ButtonStyle.lerp(
        secondary,
        other.secondary,
        t,
      )!,
    );
  }
}
