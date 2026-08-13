import 'package:flutter/material.dart';

class AppThemedata {
  //ライトモードの色
  static ThemeData get lightTheme => ThemeData(
    useMaterial3: true,
    colorScheme: ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xFF8e5e4a),
      onPrimary: Color(0xFFFFFFFF),
      secondary: Color(0xFFffb6c1),
      onSecondary: Color(0xFFFFFFFF),
      tertiary: Color(0xFF60b36d),
      onTertiary: Colors.white,
      error: Colors.red,
      onError: Colors.white,
      surface: Color(0xFFF3ECD8),
      onSurface: Color(0xFF6f4b3e),
      surfaceContainerHighest: Color(0xFFDCD6C8),  
      onSurfaceVariant:Color(0xFF5C5048), 
    ),
  );

  static ThemeData get darkTheme => ThemeData(
    useMaterial3: true,
    colorScheme: ColorScheme.dark(
      brightness: Brightness.dark, 
      primary: Color(0xFFF3ECD8),
      onPrimary: Color(0xFF1E1311), 
      secondary: Color(0xFFe8358f), 
      onSecondary: Colors.white, 
      tertiary: Color(0xFF60b36d),
      onTertiary: Colors.white,
      error: Colors.red, 
      onError: Colors.white, 
      surface: Color(0xFF261C19), 
      onSurface: Color(0xFFF3ECD8),
      surfaceContainerHighest: Color(0xFF352B26),   
      onSurfaceVariant: Color(0xFFCFC4B6),   
    ),
  );
}
