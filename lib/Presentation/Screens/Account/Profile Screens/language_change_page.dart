import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shopping_app/Application/RadioButton/radio_button_bloc.dart';
import 'package:shopping_app/Presentation/Screens/Account/widgets/radio_listtile.dart';

import '../../../../Core/colors.dart';

class LanguageSettings extends StatelessWidget {
  const LanguageSettings({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RadioButtonBloc, RadioButtonState>(
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            surfaceTintColor: Theme.of(context).brightness == Brightness.dark
                ? kdarkbackground
                : kwhite,
            automaticallyImplyLeading: true,
            backgroundColor: Theme.of(context).brightness == Brightness.dark
                ? kdarkbackground
                : kwhite,
            title: Text(
              'languagepage.selectLanguage'.tr(),
              style: GoogleFonts.montserrat(
                  fontWeight: FontWeight.bold, fontSize: 20),
            ),
          ),
          body: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ListTileRadioWidget(
                  language: 'English (US)',
                  value: 1,
                  groupValue: state.value,
                  onChanged: (int? value) {
                    context
                        .read<RadioButtonBloc>()
                        .add(RadioButtonEvent.onClicked(value: value!));
                  },
                ),
                Divider(
                  indent: 25,
                  endIndent: 25,
                  color: kGrey.withOpacity(0.3),
                ),
                ListTileRadioWidget(
                  language: 'മലയാളം (Malayalam)',
                  value: 2,
                  groupValue: state.value,
                  onChanged: (int? value) {
                    context
                        .read<RadioButtonBloc>()
                        .add(RadioButtonEvent.onClicked(value: value!));
                  },
                ),
              ],
            ),
          ),
          bottomSheet: Padding(
            padding: const EdgeInsets.only(bottom: 10),
            child: ElevatedButton(
              onPressed: () {
                if (state.value == 1) {
                  context.setLocale(const Locale('en', 'US'));
                } else if (state.value == 2) {
                  context.setLocale(const Locale('ml', 'IN'));
                }
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
                'apply'.tr(),
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
