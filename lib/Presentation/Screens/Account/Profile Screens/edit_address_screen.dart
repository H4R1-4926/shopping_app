import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';
import 'package:shopping_app/Core/colors.dart';
import 'package:shopping_app/Core/size.dart';
import 'package:shopping_app/Presentation/Screens/Account/widgets/address_edit_or_create.dart';

class EditAddress extends StatelessWidget {
  const EditAddress({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:
          Theme.of(context).brightness == Brightness.dark ? kblack : klightGrey,
      appBar: AppBar(
        automaticallyImplyLeading: true,
        title: Text(
          'Edit Address',
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
                  tileColor: Theme.of(context).brightness == Brightness.dark
                      ? const Color.fromARGB(255, 53, 53, 53)
                      : kwhite,
                  leading: CircleAvatar(
                    backgroundColor: kGrey.withOpacity(0.4),
                    radius: 25,
                    child: const CircleAvatar(
                      radius: 18,
                      backgroundColor: kblack,
                      child: Icon(Iconsax.location5, color: kwhite, size: 19),
                    ),
                  ),
                  trailing: IconButton(
                      onPressed: () {
                        Navigator.of(context).push(PageRouteBuilder(
                          pageBuilder:
                              (context, animation, secondaryAnimation) =>
                                  const AddressEditOrCreate(
                            type: AddressType.editAddress,
                          ),
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
                      icon: const Icon(Iconsax.edit, size: 22)),
                  title: Text(
                    'Person Name',
                    style: GoogleFonts.lato(
                      fontWeight: FontWeight.w900,
                      fontSize: 17,
                    ),
                  ),
                  subtitle: Text(
                    'Address',
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                    style: GoogleFonts.lato(
                        fontSize: 15, color: kGrey.withOpacity(0.8)),
                  ),
                  contentPadding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
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
              onPressed: () {
                Navigator.of(context).push(PageRouteBuilder(
                  pageBuilder: (context, animation, secondaryAnimation) =>
                      const AddressEditOrCreate(
                    type: AddressType.addNewAddress,
                  ),
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
              style: ButtonStyle(
                  backgroundColor:
                      Theme.of(context).brightness == Brightness.dark
                          ? const WidgetStatePropertyAll(
                              Color.fromARGB(255, 101, 101, 101))
                          : WidgetStatePropertyAll(kGrey.withOpacity(0.1)),
                  foregroundColor:
                      Theme.of(context).brightness == Brightness.dark
                          ? const WidgetStatePropertyAll(kwhite)
                          : const WidgetStatePropertyAll(kblack),
                  fixedSize: const WidgetStatePropertyAll(Size(0, 50))),
              child: Text(
                'Add New Address',
                style:
                    GoogleFonts.lato(fontWeight: FontWeight.w900, fontSize: 13),
              ),
            ),
          )
        ],
      ),
      bottomSheet: Container(
        width: double.infinity,
        height: 100,
        decoration: BoxDecoration(
            color: Theme.of(context).brightness == Brightness.dark
                ? const Color.fromARGB(255, 97, 97, 97)
                : kwhite,
            borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(20), topRight: Radius.circular(20))),
        child: Center(
          child: ElevatedButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            style: ButtonStyle(
                fixedSize: const WidgetStatePropertyAll(Size(310, 50)),
                backgroundColor: Theme.of(context).brightness == Brightness.dark
                    ? const WidgetStatePropertyAll(
                        Color.fromARGB(255, 59, 59, 59))
                    : const WidgetStatePropertyAll(kblack),
                foregroundColor: const WidgetStatePropertyAll(kwhite),
                elevation: const WidgetStatePropertyAll(10)),
            child: Text('Apply',
                style: GoogleFonts.lato(
                    color: kwhite, fontWeight: FontWeight.bold, fontSize: 12)),
          ),
        ),
      ),
    );
  }
}
