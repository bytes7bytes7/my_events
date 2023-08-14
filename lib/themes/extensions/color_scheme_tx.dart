import 'package:flutter/material.dart';

class ColorSchemeTX extends ThemeExtension<ColorSchemeTX> {
  const ColorSchemeTX({
    required this.chevron,
  });

  final Color chevron;

  @override
  ThemeExtension<ColorSchemeTX> copyWith({
    Color? chevron,
  }) {
    return ColorSchemeTX(
      chevron: chevron ?? this.chevron,
    );
  }

  @override
  ThemeExtension<ColorSchemeTX> lerp(
    covariant ThemeExtension<ColorSchemeTX>? other,
    double t,
  ) {
    if (other is! ColorSchemeTX) {
      return this;
    }

    return ColorSchemeTX(
      chevron: Color.lerp(
        chevron,
        other.chevron,
        t,
      )!,
    );
  }
}
