import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shopping_app/Core/colors.dart';
import 'package:shopping_app/Presentation/Screens/Account/widgets/titile_desc_widget.dart';

class TermsAndConditions extends StatelessWidget {
  const TermsAndConditions({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        surfaceTintColor: kwhite,
        automaticallyImplyLeading: true,
        backgroundColor: kwhite,
        title: Text(
          'Terms & Conditions',
          style:
              GoogleFonts.montserrat(fontWeight: FontWeight.bold, fontSize: 20),
        ),
      ),
      body: const SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
          child: Column(
            children: [
              TitleAndDescWidget(
                title: '1. Introduction',
                description:
                    'Welcome to [App Name] ("we", "our", "us"). These Terms and Conditions ("Terms") govern your use of our mobile application and services (collectively, the "Service"). By accessing or using the Service, you agree to be bound by these Terms. If you do not agree to these Terms, you may not use the Service.',
              ),
              TitleAndDescWidget(
                title: '2. Use of the Service',
                description:
                    'To use the Service, you must be at least 18 years old. By using the Service, you confirm that you meet this age requirement. You may need to register for an account to access certain features. You agree to provide accurate and complete information during registration and to update your information as necessary. You are responsible for maintaining the confidentiality of your account credentials and for all activities that occur under your account. You agree not to use the Service for any unlawful purposes, interfere with the Service, or attempt to gain unauthorized access to any part of the Service.',
              ),
              TitleAndDescWidget(
                title: '3. Purchase and Payments',
                description:
                    'When you place an order through the Service, you agree to pay the prices listed, including any applicable taxes and shipping fees. All orders are subject to acceptance by us, and we reserve the right to refuse any order. We accept various forms of payment as indicated on the Service. By submitting payment information, you confirm that you have the legal right to use the provided payment method. We strive to deliver your orders within the estimated delivery times, but we are not responsible for delays caused by unforeseen circumstances. Please review our return and refund policy [here/link] before making any purchases.',
              ),
              TitleAndDescWidget(
                title: '4. Intellectual Property',
                description:
                    'The Service and all its contents, including information, software, text, displays, images, video, and audio, are owned by [Company Name], its licensors, or other providers and are protected by intellectual property laws. We grant you a limited, non-exclusive, non-transferable, and revocable license to access and use the Service for personal, non-commercial use. You may not reproduce, distribute, modify, create derivative works of, publicly display, perform, republish, download, store, or transmit any material from our Service without prior written consent.',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
