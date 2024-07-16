import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shopping_app/Core/colors.dart';
import 'package:shopping_app/Core/size.dart';
import 'package:shopping_app/Presentation/Home/tab_bar.dart';

class PaymentPage extends StatelessWidget {
  const PaymentPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).brightness == Brightness.dark
          ? kdarkbackground
          : klightGrey,
      appBar: AppBar(
        title: Text(
          'Payment Methods',
          style:
              GoogleFonts.montserrat(fontWeight: FontWeight.bold, fontSize: 20),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            kSizedBoxHeight20,
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Text(
                'select the payment method you want to use',
                style: GoogleFonts.lato(fontSize: 15),
              ),
            ),
            kSizedBoxHeight10,
            Center(
              child: Container(
                height: 70,
                width: 350,
                decoration: BoxDecoration(
                    color: Theme.of(context).brightness == Brightness.dark
                        ? kdarkcolor1
                        : kwhite,
                    borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20))),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 15),
                      child: Row(
                        children: [
                          Container(
                            height: 50,
                            width: 50,
                            decoration: const BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage('assets/upi.png'))),
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          Text(
                            'UPI',
                            style: GoogleFonts.poppins(
                                fontWeight: FontWeight.bold, fontSize: 16),
                          )
                        ],
                      ),
                    ),
                    Radio(
                      value: 1,
                      groupValue: 1,
                      onChanged: (value) {},
                      activeColor:
                          Theme.of(context).brightness == Brightness.dark
                              ? kwhite
                              : kblack,
                      fillColor: Theme.of(context).brightness == Brightness.dark
                          ? const WidgetStatePropertyAll(kwhite)
                          : const WidgetStatePropertyAll(kblack),
                    )
                  ],
                ),
              ),
            ),
            Center(
                child: Visibility(
                    child: Container(
              height: 100,
              width: 350,
              decoration: BoxDecoration(
                  color: Theme.of(context).brightness == Brightness.dark
                      ? kdarkcolor1
                      : kwhite,
                  borderRadius: const BorderRadius.only(
                      bottomRight: Radius.circular(20),
                      bottomLeft: Radius.circular(20))),
              child: Column(
                children: [
                  Flexible(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      child: TextField(
                        maxLength: 30,
                        maxLines: 1,
                        cursorColor: kblack,
                        decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(35),
                                borderSide: const BorderSide(
                                    width: 1.3, color: kblack)),
                            counterText: '',
                            hintText: 'Enter valid UPI ID',
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(35),
                                borderSide:
                                    const BorderSide(color: kblack, width: 2)),
                            suffixIcon: IconButton(
                                onPressed: () {},
                                icon: const Icon(Icons.close))),
                      ),
                    ),
                  ),
                  kSizedBoxHeight5,
                  Visibility(
                    child: Row(
                      children: [
                        const SizedBox(
                          width: 10,
                        ),
                        Text(
                          'upi user name'.toUpperCase(),
                          style: GoogleFonts.poppins(
                              fontSize: 15, fontWeight: FontWeight.w500),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        const CircleAvatar(
                          radius: 12,
                          backgroundColor: Color.fromARGB(255, 97, 236, 101),
                          child: Icon(
                            Icons.check,
                            color: kwhite,
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ))),
            kSizedBoxHeight30,
            Center(
              child: Container(
                height: 70,
                width: 350,
                decoration: BoxDecoration(
                    color: Theme.of(context).brightness == Brightness.dark
                        ? kdarkcolor1
                        : kwhite,
                    borderRadius: BorderRadius.circular(20)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 15),
                      child: Row(
                        children: [
                          Container(
                            height: 50,
                            width: 50,
                            decoration: const BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage('assets/gpay.png'))),
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          Text(
                            'GPAY',
                            style: GoogleFonts.poppins(
                                fontWeight: FontWeight.bold, fontSize: 16),
                          )
                        ],
                      ),
                    ),
                    Radio(
                      value: 1,
                      groupValue: 0,
                      onChanged: (value) {},
                      activeColor:
                          Theme.of(context).brightness == Brightness.dark
                              ? kwhite
                              : kblack,
                      fillColor: Theme.of(context).brightness == Brightness.dark
                          ? const WidgetStatePropertyAll(kwhite)
                          : const WidgetStatePropertyAll(kblack),
                    )
                  ],
                ),
              ),
            ),
            kSizedBoxHeight30,
            Center(
              child: Container(
                height: 70,
                width: 350,
                decoration: BoxDecoration(
                    color: Theme.of(context).brightness == Brightness.dark
                        ? kdarkcolor1
                        : kwhite,
                    borderRadius: BorderRadius.circular(20)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 15),
                      child: Row(
                        children: [
                          Container(
                            height: 50,
                            width: 50,
                            decoration: const BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage('assets/paytm.png'))),
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          Text(
                            'PAYTM',
                            style: GoogleFonts.poppins(
                                fontWeight: FontWeight.bold, fontSize: 16),
                          )
                        ],
                      ),
                    ),
                    Radio(
                      value: 1,
                      groupValue: 0,
                      onChanged: (value) {},
                      activeColor:
                          Theme.of(context).brightness == Brightness.dark
                              ? kwhite
                              : kblack,
                      fillColor: Theme.of(context).brightness == Brightness.dark
                          ? const WidgetStatePropertyAll(kwhite)
                          : const WidgetStatePropertyAll(kblack),
                    )
                  ],
                ),
              ),
            ),
            kSizedBoxHeight30,
            Center(
              child: Container(
                height: 70,
                width: 350,
                decoration: BoxDecoration(
                    color: Theme.of(context).brightness == Brightness.dark
                        ? kdarkcolor1
                        : kwhite,
                    borderRadius: BorderRadius.circular(20)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 15),
                      child: Row(
                        children: [
                          Container(
                            height: 50,
                            width: 50,
                            decoration: const BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage('assets/cod.png'))),
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          Text(
                            'Cash On Delivery',
                            style: GoogleFonts.poppins(
                                fontWeight: FontWeight.bold, fontSize: 16),
                          )
                        ],
                      ),
                    ),
                    Radio(
                      value: 1,
                      groupValue: 0,
                      onChanged: (value) {},
                      activeColor:
                          Theme.of(context).brightness == Brightness.dark
                              ? kwhite
                              : kblack,
                      fillColor: Theme.of(context).brightness == Brightness.dark
                          ? const WidgetStatePropertyAll(kwhite)
                          : const WidgetStatePropertyAll(kblack),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      bottomSheet: Container(
        height: 80,
        width: double.infinity,
        decoration: BoxDecoration(
            color: Theme.of(context).brightness == Brightness.dark
                ? kdarkbackground
                : kwhite,
            borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(20), topRight: Radius.circular(20))),
        child: Center(
          child: ElevatedButton(
            onPressed: () {
              Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const TabBarPage(),
                  ),
                  (route) => false);
            },
            style: ButtonStyle(
                backgroundColor: Theme.of(context).brightness == Brightness.dark
                    ? const WidgetStatePropertyAll(kdarkcolor3)
                    : const WidgetStatePropertyAll(kblack),
                fixedSize: const WidgetStatePropertyAll(Size(300, 50))),
            child: Text(
              'Confirm Payment',
              style: GoogleFonts.lato(
                  fontWeight: FontWeight.bold, fontSize: 15, color: kwhite),
            ),
          ),
        ),
      ),
    );
  }
}
