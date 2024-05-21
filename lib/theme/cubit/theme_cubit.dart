import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ThemeCubit extends Cubit<ThemeMode> {
  ThemeMode mode;
  ThemeCubit(this.mode) : super(mode);

  themeToLight() => emit(ThemeMode.light);
  themeToDark() => emit(ThemeMode.dark);
}