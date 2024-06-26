import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shopping_app/Core/colors.dart';

class ListTileWidget extends StatelessWidget {
  final String title;
  const ListTileWidget({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return ListTile(
        leading: Text(
          title,
          style: GoogleFonts.lato(
              fontWeight: FontWeight.w800, fontSize: 14.8, color: kblack),
        ),
        trailing: const SwitchWidget());
  }
}

class SwitchWidget extends StatefulWidget {
  const SwitchWidget({
    super.key,
  });

  @override
  State<SwitchWidget> createState() => _SwitchWidgetState();
}

class _SwitchWidgetState extends State<SwitchWidget> {
  bool _value = true;

  @override
  Widget build(BuildContext context) {
    return Switch(
      value: _value,
      onChanged: (value) {
        setState(() {
          _value = value;
        });
      },
      activeTrackColor: kblack,
      inactiveTrackColor: klightGrey,
      trackOutlineColor: MaterialStatePropertyAll(_value ? kblack : klightGrey),
      thumbColor: const MaterialStatePropertyAll(kwhite),
    );
  }
}
