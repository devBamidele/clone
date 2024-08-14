import 'package:flutter/material.dart';

class AppColors {
  static const Color backgroundColor = Color(0xFFf4f2fa);
  static const Color selectedTabIconColor = Color(0xFF0e7ef8);

  static const Color borderColor = Color(0xFFe7e4e8);
  static const Color iconButtonBackground = Color(0xFFf4f2fa);
  static const Color green = Color(0xFF33eb6b);

  static const profileGradient = LinearGradient(
    colors: [Color(0xffa7abb8), Color(0xff888894)],
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
  );

  // Define a MaterialColor for Black with different shades
  static const MaterialColor black = MaterialColor(
    0xFF000000,
    <int, Color>{
      50: Color(0xFFf2f2f2),
      100: Color(0xFFd9d9d9),
      200: Color(0xFF9a9da9),
      300: Color(0xFF838189),
      400: Color(0xFF333034),
      500: Color(0xFF000000),
    },
  );
}
