import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shopping_app/Core/colors.dart';
import 'package:shopping_app/Core/size.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: klightGrey,
      appBar: AppBar(
        surfaceTintColor: klightGrey,
        backgroundColor: klightGrey,
        title: Text(
          'Notifications',
          style:
              GoogleFonts.montserrat(fontWeight: FontWeight.bold, fontSize: 28),
        ),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return Card(
            margin: const EdgeInsets.only(bottom: 15),
            elevation: 0,
            color: klightGrey,
            surfaceTintColor: klightGrey,
            borderOnForeground: false,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Text(
                    'Date',
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                ),
                kSizedBoxHeight5,
                Center(
                  child: Container(
                    width: 350,
                    height: 110,
                    decoration: BoxDecoration(
                        color: kwhite, borderRadius: BorderRadius.circular(18)),
                    child: Row(
                      children: [
                        const SizedBox(
                          width: 10,
                        ),
                        const CircleAvatar(
                          maxRadius: 36,
                          backgroundColor: kblack,
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
                                  fontWeight: FontWeight.bold, fontSize: 23),
                            ),
                            Text(
                              'Description Goes Here',
                              style: GoogleFonts.lato(fontSize: 15),
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
