import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shopping_app/Core/colors.dart';
import 'package:shopping_app/Core/size.dart';
import 'package:shopping_app/Presentation/Home/tab_bar.dart';

class MainAddressAddPage extends StatelessWidget {
  const MainAddressAddPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        title: Text(
          'addressAdd.addaddres'.tr(),
          style:
              GoogleFonts.montserrat(fontWeight: FontWeight.bold, fontSize: 20),
        ),
      ),
      body: ListView(
        children: [
          kSizedBoxHeight40,
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Text(
              'addressAdd.houseoretc'.tr(),
              style: GoogleFonts.poppins(
                  fontWeight: FontWeight.bold, fontSize: 15),
            ),
          ),
          kSizedBoxHeight5,
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: TextFormField(
              cursorColor: kblack,
              maxLength: 30,
              maxLines: 1,
              autofocus: false,
              style: GoogleFonts.lato(),
              decoration: InputDecoration(
                  focusColor: kblack,
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: const BorderSide(width: 1.5)),
                  counterText: '',
                  hintStyle: GoogleFonts.lato(),
                  hintText: 'eg: building number: 47',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide.none),
                  filled: true,
                  fillColor: Theme.of(context).brightness == Brightness.dark
                      ? kdarkcolor1
                      : klightGrey),
            ),
          ),
          kSizedBoxHeight30,
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Text(
              'addressAdd.streetoretc'.tr(),
              style: GoogleFonts.poppins(
                  fontWeight: FontWeight.bold, fontSize: 15),
            ),
          ),
          kSizedBoxHeight5,
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: TextFormField(
              cursorColor: kblack,
              maxLength: 30,
              maxLines: 1,
              autofocus: false,
              style: GoogleFonts.lato(),
              decoration: InputDecoration(
                  focusColor: kblack,
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: const BorderSide(width: 1.5)),
                  counterText: '',
                  hintStyle: GoogleFonts.lato(),
                  hintText: 'eg: Maple Avenue',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide.none),
                  filled: true,
                  fillColor: Theme.of(context).brightness == Brightness.dark
                      ? kdarkcolor1
                      : klightGrey),
            ),
          ),
          kSizedBoxHeight30,
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Text(
              'addressAdd.cityname'.tr(),
              style: GoogleFonts.poppins(
                  fontWeight: FontWeight.bold, fontSize: 15),
            ),
          ),
          kSizedBoxHeight5,
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: TextFormField(
              cursorColor: kblack,
              maxLength: 30,
              maxLines: 1,
              autofocus: false,
              style: GoogleFonts.lato(),
              decoration: InputDecoration(
                  focusColor: kblack,
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: const BorderSide(width: 1.5)),
                  counterText: '',
                  hintStyle: GoogleFonts.lato(),
                  hintText: 'eg: Springfield',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide.none),
                  filled: true,
                  fillColor: Theme.of(context).brightness == Brightness.dark
                      ? kdarkcolor1
                      : klightGrey),
            ),
          ),
          kSizedBoxHeight30,
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Text(
              'addressAdd.landmark'.tr(),
              style: GoogleFonts.poppins(
                  fontWeight: FontWeight.bold, fontSize: 15),
            ),
          ),
          kSizedBoxHeight5,
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: TextFormField(
              cursorColor: kblack,
              maxLength: 30,
              maxLines: 1,
              autofocus: false,
              style: GoogleFonts.lato(),
              decoration: InputDecoration(
                  focusColor: kblack,
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: const BorderSide(width: 1.5)),
                  counterText: '',
                  hintStyle: GoogleFonts.lato(),
                  hintText: 'eg: near Liberty Tower',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide.none),
                  filled: true,
                  fillColor: Theme.of(context).brightness == Brightness.dark
                      ? kdarkcolor1
                      : klightGrey),
            ),
          ),
          kSizedBoxHeight30,
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Text(
              'addressAdd.district'.tr(),
              style: GoogleFonts.poppins(
                  fontWeight: FontWeight.bold, fontSize: 15),
            ),
          ),
          kSizedBoxHeight5,
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: TextFormField(
              cursorColor: kblack,
              maxLength: 30,
              maxLines: 1,
              autofocus: false,
              style: GoogleFonts.lato(),
              decoration: InputDecoration(
                  focusColor: kblack,
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: const BorderSide(width: 1.5)),
                  counterText: '',
                  hintStyle: GoogleFonts.lato(),
                  hintText: 'eg: Kensington ',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide.none),
                  filled: true,
                  fillColor: Theme.of(context).brightness == Brightness.dark
                      ? kdarkcolor1
                      : klightGrey),
            ),
          ),
          kSizedBoxHeight30,
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Text(
              'addressAdd.pincode'.tr(),
              style: GoogleFonts.poppins(
                  fontWeight: FontWeight.bold, fontSize: 15),
            ),
          ),
          kSizedBoxHeight5,
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: TextFormField(
              cursorColor: kblack,
              maxLength: 30,
              maxLines: 1,
              autofocus: false,
              style: GoogleFonts.lato(),
              decoration: InputDecoration(
                  focusColor: kblack,
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: const BorderSide(width: 1.5)),
                  counterText: '',
                  hintStyle: GoogleFonts.lato(),
                  hintText: 'eg: 68*0*0',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide.none),
                  filled: true,
                  fillColor: Theme.of(context).brightness == Brightness.dark
                      ? kdarkcolor1
                      : klightGrey),
            ),
          ),
          const SizedBox(
            height: 100,
          )
        ],
      ),
      bottomSheet: Container(
        width: double.infinity,
        height: 80,
        decoration: BoxDecoration(
            color: Theme.of(context).brightness == Brightness.dark
                ? kdarkbackground
                : kwhite,
            borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(20), topRight: Radius.circular(20))),
        child: Center(
          child: ElevatedButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const TabBarPage(),
                  ));
            },
            style: ButtonStyle(
                fixedSize: const WidgetStatePropertyAll(Size(310, 50)),
                backgroundColor: WidgetStatePropertyAll(
                    Theme.of(context).brightness == Brightness.dark
                        ? kdarkcolor1
                        : kblack),
                foregroundColor: const WidgetStatePropertyAll(kwhite),
                elevation: const WidgetStatePropertyAll(10)),
            child: Text(
              'continue'.tr(),
              style: GoogleFonts.lato(fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ),
    );
  }
}
