import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shopping_app/Application/Theme%20Bloc/theme_bloc_bloc.dart';

import '../../../../Core/colors.dart';

class ThemeSettings extends StatelessWidget {
  const ThemeSettings({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeBlocBloc, ThemeBlocState>(
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            automaticallyImplyLeading: true,
            title: Text(
              'Theme',
              style: GoogleFonts.montserrat(
                  fontWeight: FontWeight.bold, fontSize: 20),
            ),
          ),
          body: Column(
            children: [
              Center(
                child: Padding(
                  padding: const EdgeInsets.only(left: 5),
                  child: ListTile(
                    leading: Text(
                      'System Default',
                      style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w700, fontSize: 14),
                    ),
                    trailing: Radio(
                      value: 1,
                      groupValue: state.value,
                      onChanged: (value) {
                        context
                            .read<ThemeBlocBloc>()
                            .add(OnSelected(value: value!));
                      },
                      activeColor:
                          Theme.of(context).brightness == Brightness.dark
                              ? kwhite
                              : kblack,
                      splashRadius: 20,
                    ),
                  ),
                ),
              ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.only(left: 5),
                  child: ListTile(
                    leading: Text(
                      'Light',
                      style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w700, fontSize: 14),
                    ),
                    trailing: Radio(
                      value: 2,
                      groupValue: state.value,
                      onChanged: (value) {
                        context
                            .read<ThemeBlocBloc>()
                            .add(OnSelected(value: value!));
                      },
                      activeColor:
                          Theme.of(context).brightness == Brightness.dark
                              ? kwhite
                              : kblack,
                      splashRadius: 20,
                    ),
                  ),
                ),
              ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.only(left: 5),
                  child: ListTile(
                    leading: Text(
                      'Dark',
                      style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w700, fontSize: 14),
                    ),
                    trailing: Radio(
                      value: 3,
                      groupValue: state.value,
                      onChanged: (value) {
                        context
                            .read<ThemeBlocBloc>()
                            .add(OnSelected(value: value!));
                      },
                      activeColor:
                          Theme.of(context).brightness == Brightness.dark
                              ? kwhite
                              : kblack,
                      splashRadius: 20,
                    ),
                  ),
                ),
              )
            ],
          ),
          bottomSheet: Padding(
            padding: const EdgeInsets.only(bottom: 10),
            child: ElevatedButton(
              onPressed: () {
                log(state.value.toString());
                context.read<ThemeBlocBloc>().add(OnTap(value: state.value));
                Navigator.pop(context);
              },
              style: ButtonStyle(
                  elevation: const WidgetStatePropertyAll(8),
                  backgroundColor:
                      Theme.of(context).brightness == Brightness.dark
                          ? const WidgetStatePropertyAll(kwhite)
                          : const WidgetStatePropertyAll(kblack),
                  fixedSize: const WidgetStatePropertyAll(Size(270, 50))),
              child: Text(
                'Apply',
                style: GoogleFonts.lato(
                    color: Theme.of(context).brightness == Brightness.dark
                        ? kblack
                        : kwhite,
                    fontWeight: FontWeight.bold,
                    fontSize: 12),
              ),
            ),
          ),
        );
      },
    );
  }
}
