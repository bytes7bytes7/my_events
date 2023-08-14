import 'package:flutter/material.dart';

import '../../gen/fonts.gen.dart';
import '../extensions/extensions.dart';

part 'colors.dart';

final lightTheme = ThemeData.light().copyWith(
  colorScheme: const ColorScheme(
    brightness: Brightness.light,
    primary: _Colors.monza,
    onPrimary: _Colors.white,
    secondary: _Colors.wispPink,
    onSecondary: _Colors.monza,
    error: _Colors.monza,
    onError: _Colors.white,
    background: _Colors.white,
    onBackground: _Colors.black,
    surface: _Colors.alabaster,
    onSurface: _Colors.shark,
  ),
  scaffoldBackgroundColor: _Colors.white,
  textTheme: const TextTheme(
    displayLarge: TextStyle(
      fontSize: 32,
      fontWeight: FontWeight.bold,
      fontFamily: FontFamily.sansation,
      color: _Colors.shark,
    ),
    displayMedium: TextStyle(
      fontSize: 24,
      fontWeight: FontWeight.bold,
      fontFamily: FontFamily.sansation,
      color: _Colors.white,
    ),
    displaySmall: TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.bold,
      fontFamily: FontFamily.sansation,
      color: _Colors.white,
    ),
    titleLarge: TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.bold,
      fontFamily: FontFamily.sansation,
      color: _Colors.shark,
    ),
    titleMedium: TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.bold,
      fontFamily: FontFamily.sansation,
      color: _Colors.white,
    ),
    titleSmall: TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.bold,
      fontFamily: FontFamily.sansation,
      color: _Colors.shark,
    ),
    labelLarge: TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.bold,
      fontFamily: FontFamily.sansation,
      color: _Colors.white,
    ),
    labelMedium: TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.w400,
      fontFamily: FontFamily.sansation,
      color: _Colors.white,
    ),
    labelSmall: TextStyle(
      fontSize: 10,
      fontWeight: FontWeight.w400,
      fontFamily: FontFamily.sansation,
      color: _Colors.slateGray,
    ),
    bodyLarge: TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.bold,
      fontFamily: FontFamily.sansation,
      color: _Colors.slateGray,
    ),
    bodyMedium: TextStyle(
      fontSize: 15,
      fontWeight: FontWeight.bold,
      fontFamily: FontFamily.sansation,
      color: _Colors.shark,
    ),
    bodySmall: TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.w400,
      fontFamily: FontFamily.sansation,
      color: _Colors.slateGray,
    ),
  ),
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
      tertiary: ButtonStyle(
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
            side: BorderSide.none,
          ),
        ),
        backgroundColor: MaterialStateProperty.all(
          _Colors.athensGray.withOpacity(0.4),
        ),
        foregroundColor: MaterialStateProperty.resolveWith((states) {
          if (states.contains(MaterialState.disabled)) {
            return _Colors.white.withOpacity(0.5);
          }

          return _Colors.white;
        }),
        padding: MaterialStateProperty.all(
          const EdgeInsets.symmetric(
            horizontal: 10,
            vertical: 14,
          ),
        ),
        textStyle: MaterialStateProperty.all(
          const TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.bold,
            fontFamily: FontFamily.sansation,
          ),
        ),
      ),
    ),
  ],
);
