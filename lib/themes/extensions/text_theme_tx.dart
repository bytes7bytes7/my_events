import 'package:flutter/material.dart';

class TextThemeTX extends ThemeExtension<TextThemeTX> {
  const TextThemeTX({
    required this.labelBig,
  });

  final TextStyle labelBig;

  @override
  ThemeExtension<TextThemeTX> copyWith({
    TextStyle? labelBig,
  }) {
    return TextThemeTX(
      labelBig: labelBig ?? this.labelBig,
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
    );
  }
}
