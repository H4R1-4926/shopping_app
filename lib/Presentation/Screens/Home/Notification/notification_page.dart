import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shopping_app/Core/colors.dart';
import 'package:shopping_app/Core/size.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:
          Theme.of(context).brightness == Brightness.dark ? kblack : klightGrey,
      appBar: AppBar(
        backgroundColor: Theme.of(context).brightness == Brightness.dark
            ? kblack
            : klightGrey,
        surfaceTintColor: Theme.of(context).brightness == Brightness.dark
            ? kblack
            : klightGrey,
        title: Text(
          'Notifications',
          style:
              GoogleFonts.montserrat(fontWeight: FontWeight.bold, fontSize: 20),
        ),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return Card(
            margin: const EdgeInsets.only(bottom: 15),
            elevation: 0,
            color: Theme.of(context).brightness == Brightness.dark
                ? kblack
                : klightGrey,
            surfaceTintColor: Theme.of(context).brightness == Brightness.dark
                ? kblack
                : klightGrey,
            borderOnForeground: false,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Text(
                    'Date',
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                ),
                kSizedBoxHeight5,
                Center(
                  child: Container(
                    width: 340,
                    height: 110,
                    decoration: BoxDecoration(
                        color: Theme.of(context).brightness == Brightness.dark
                            ? const Color.fromARGB(255, 53, 53, 53)
                            : kwhite,
                        borderRadius: BorderRadius.circular(18)),
                    child: Row(
                      children: [
                        const SizedBox(
                          width: 10,
                        ),
                        CircleAvatar(
                          maxRadius: 36,
                          backgroundColor:
                              Theme.of(context).brightness == Brightness.dark
                                  ? kwhite
                                  : kblack,
                        ),
                        const SizedBox(
                          width: 25,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              maxLines: 1,
                              'Title Goes Here',
                              style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.bold, fontSize: 19),
                            ),
                            Text(
                              'Description Goes Here',
                              style: GoogleFonts.lato(fontSize: 13),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          );
        },
        itemCount: 10,
      ),
    );
  }
}
