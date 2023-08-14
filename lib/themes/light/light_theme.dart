import 'package:flutter/material.dart';

import '../../gen/fonts.gen.dart';
import '../extensions/extensions.dart';

part 'colors.dart';

final lightTheme = ThemeData.light().copyWith(
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ButtonStyle(
      shape: MaterialStateProperty.all(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
          side: BorderSide.none,
        ),
      ),
      foregroundColor: MaterialStateProperty.all(_Colors.white),
      backgroundColor: MaterialStateProperty.resolveWith((states) {
        if (states.contains(MaterialState.disabled)) {
          return _Colors.monza.withOpacity(0.3);
        }

        return _Colors.monza;
      }),
      padding: MaterialStateProperty.all(const EdgeInsets.all(18)),
      textStyle: MaterialStateProperty.all(
        const TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.bold,
          fontFamily: FontFamily.sansation,
        ),
      ),
    ),
  ),
  extensions: [
    ElevatedButtonTX(
      secondary: ButtonStyle(
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
            side: BorderSide.none,
          ),
        ),
        foregroundColor: MaterialStateProperty.resolveWith((states) {
          if (states.contains(MaterialState.disabled)) {
            return _Colors.monza.withOpacity(0.3);
          }

          return _Colors.monza;
        }),
        backgroundColor: MaterialStateProperty.all(_Colors.wispPink),
        padding: MaterialStateProperty.all(const EdgeInsets.all(18)),
        textStyle: MaterialStateProperty.all(
          const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            fontFamily: FontFamily.sansation,
          ),
        ),
      ),
    ),
  ],
);
