import 'package:aboutme/base_screen.dart';
import 'package:aboutme/theme/cubit/theme_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RootPage extends StatelessWidget {
  const RootPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseScreen(
        builder: (context, constraints) {
          return Column(
            children: [
              const Text('Koray Metin'),
              const SizedBox(height: 12.0),
              BlocBuilder<ThemeCubit, dynamic>(
                builder: (context, state) {
                  return Switch(
                      value: (state == ThemeMode.light),
                      onChanged: (newValue) {
                        (newValue) ?context.read<ThemeCubit>().themeToLight() :context.read<ThemeCubit>().themeToDark();
                      });
                }
              ),
            ],
          );
        });
  }
}
