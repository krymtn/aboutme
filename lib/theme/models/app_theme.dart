import 'package:flutter/material.dart';
import 'color_scheme.dart' as color_scheme;

final lightTheme = ThemeData(
  fontFamily: 'Montserrat',
  useMaterial3: true,
  colorScheme: color_scheme.lightColorScheme
);

final darkTheme = ThemeData(
    fontFamily: 'Montserrat',
    useMaterial3: true,
    colorScheme: color_scheme.darkColorScheme
);