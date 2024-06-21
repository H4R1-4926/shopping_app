import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';
import 'package:shopping_app/Core/colors.dart';
import 'package:shopping_app/Presentation/Screens/Cart/Recipt%20Page/reciept_page.dart';

class ShippingPage extends StatelessWidget {
  const ShippingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: klightGrey,
      appBar: AppBar(
        backgroundColor: kwhite,
        surfaceTintColor: kwhite,
        title: Text(
          'Choose Shipping',
          style:
              GoogleFonts.montserrat(fontWeight: FontWeight.bold, fontSize: 22),
        ),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            child: ListTile(
              tileColor: kwhite,
              leading: CircleAvatar(
                backgroundColor: kGrey.withOpacity(0.4),
                radius: 34,
                child: const CircleAvatar(
                  radius: 21,
                  backgroundColor: kblack,
                  child: Icon(
                    Iconsax.box,
                    color: kwhite,
                  ),
                ),
              ),
              trailing: Radio(
                value: 1,
                groupValue: 1,
                onChanged: (value) {},
                activeColor: kblack,
                fillColor: const MaterialStatePropertyAll(kblack),
                splashRadius: 25,
                visualDensity: VisualDensity.comfortable,
              ),
              title: Text(
                'Delivary Mode',
                style: GoogleFonts.lato(
                    fontWeight: FontWeight.w900, fontSize: 19, color: kblack),
              ),
              subtitle: Row(
                children: [
                  Text(
                    'Reach Time',
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                    style: GoogleFonts.lato(
                        fontSize: 15, color: kGrey.withOpacity(0.8)),
                  ),
                ],
              ),
              contentPadding:
                  const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
            ),
          );
        },
        itemCount: 4,
      ),
      bottomSheet: Container(
        width: double.infinity,
        height: 100,
        color: kwhite,
        child: Center(
          child: ElevatedButton(
            onPressed: () {
              Navigator.of(context).push(PageRouteBuilder(
                pageBuilder: (context, animation, secondaryAnimation) =>
                    const RecieptPage(),
                transitionsBuilder:
                    (context, animation, secondaryAnimation, child) {
                  var tween = Tween(
                    begin: const Offset(1.0, 0.0),
                    end: Offset.zero,
                  ).chain(CurveTween(curve: Curves.easeIn));
                  return SlideTransition(
                    position: animation.drive(tween),
                    child: child,
                  );
                },
              ));
            },
            style: const ButtonStyle(
                fixedSize: MaterialStatePropertyAll(Size(310, 60)),
                backgroundColor: MaterialStatePropertyAll(kblack),
                foregroundColor: MaterialStatePropertyAll(kwhite),
                elevation: MaterialStatePropertyAll(10)),
            child: const Text('Continue To Payment ➤'),
          ),
        ),
      ),
    );
  }
}
