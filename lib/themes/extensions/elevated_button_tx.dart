import 'package:flutter/material.dart';

class ElevatedButtonTX extends ThemeExtension<ElevatedButtonTX> {
  const ElevatedButtonTX({
    required this.secondary,
    required this.tertiary,
    required this.quaternary,
  });

  final ButtonStyle secondary;
  final ButtonStyle tertiary;
  final ButtonStyle quaternary;

  @override
  ThemeExtension<ElevatedButtonTX> copyWith({
    ButtonStyle? secondary,
    ButtonStyle? tertiary,
    ButtonStyle? quaternary,
  }) {
    return ElevatedButtonTX(
      secondary: secondary ?? this.secondary,
      tertiary: tertiary ?? this.tertiary,
      quaternary: quaternary ?? this.quaternary,
    );
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
      tertiary: ButtonStyle.lerp(
        tertiary,
        other.tertiary,
        t,
      )!,
      quaternary: ButtonStyle.lerp(
        quaternary,
        other.quaternary,
        t,
      )!,
    );
  }
}
