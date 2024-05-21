import 'package:aboutme/root/view/root_page.dart';
import 'package:aboutme/theme/cubit/theme_cubit.dart';
import 'package:flutter/material.dart';
import 'theme/theme.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  final ThemeMode? themeMode;
  const MyApp({super.key, this.themeMode});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ThemeCubit(themeMode ?? ThemeMode.light),
      child: BlocSelector<ThemeCubit, dynamic, ThemeMode>(
        builder: (context, state) {
          return MaterialApp(
              title: 'aboutme.koraymetin',
              theme: lightTheme,
              darkTheme: darkTheme,
              themeMode: state,
              home: const RootPage()
          );
        }, selector: (state) => state,
      ),
    );
  }
}
