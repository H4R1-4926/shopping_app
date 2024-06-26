import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';
import 'package:shopping_app/Core/colors.dart';
import 'package:shopping_app/Core/size.dart';

class AddressChangePage extends StatelessWidget {
  const AddressChangePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: klightGrey,
      appBar: AppBar(
        backgroundColor: kwhite,
        surfaceTintColor: kwhite,
        title: Text(
          'Shipping Address',
          style:
              GoogleFonts.montserrat(fontWeight: FontWeight.bold, fontSize: 20),
        ),
      ),
      body: ListView(
        children: [
          ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              return Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                child: ListTile(
                  tileColor: kwhite,
                  leading: CircleAvatar(
                    backgroundColor: kGrey.withOpacity(0.4),
                    radius: 34,
                    child: const CircleAvatar(
                      radius: 21,
                      backgroundColor: kblack,
                      child: Icon(
                        Iconsax.location5,
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
                    'Person Name',
                    style: GoogleFonts.lato(
                        fontWeight: FontWeight.w900,
                        fontSize: 18,
                        color: kblack),
                  ),
                  subtitle: Text(
                    'Address',
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                    style: GoogleFonts.lato(
                        fontSize: 15, color: kGrey.withOpacity(0.8)),
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
          kSizedBoxHeight10,
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
            child: ElevatedButton(
              onPressed: () {},
              style: ButtonStyle(
                  backgroundColor:
                      MaterialStatePropertyAll(kGrey.withOpacity(0.1)),
                  foregroundColor: const MaterialStatePropertyAll(kblack),
                  fixedSize: const MaterialStatePropertyAll(Size(0, 50))),
              child: Text(
                'Add New Address',
                style:
                    GoogleFonts.lato(fontWeight: FontWeight.w900, fontSize: 15),
              ),
            ),
          )
        ],
      ),
      bottomSheet: Container(
        width: double.infinity,
        height: 100,
        decoration: const BoxDecoration(
            color: kwhite,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20), topRight: Radius.circular(20))),
        child: Center(
          child: ElevatedButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            style: const ButtonStyle(
                fixedSize: MaterialStatePropertyAll(Size(310, 60)),
                backgroundColor: MaterialStatePropertyAll(kblack),
                foregroundColor: MaterialStatePropertyAll(kwhite),
                elevation: MaterialStatePropertyAll(10)),
            child: const Text('Apply'),
          ),
        ),
      ),
    );
  }
}
