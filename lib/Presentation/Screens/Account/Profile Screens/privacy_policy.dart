import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shopping_app/Core/colors.dart';

import 'package:shopping_app/Presentation/Screens/Account/widgets/titile_desc_widget.dart';

class PrivacyPolicyPage extends StatelessWidget {
  const PrivacyPolicyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        surfaceTintColor: kwhite,
        automaticallyImplyLeading: true,
        backgroundColor: kwhite,
        title: Text(
          'Privacy Policy',
          style:
              GoogleFonts.montserrat(fontWeight: FontWeight.bold, fontSize: 20),
        ),
      ),
      body: const SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TitleAndDescWidget(
                title: '1. Introduction',
                description:
                    'Welcome to [App Name] ("we", "our", "us"). We are committed to protecting your personal data and your privacy. This Privacy Policy explains how we collect, use, and share information about you when you use our mobile application ("App").',
              ),
              TitleAndDescWidget(
                title: '2. Types of data we collect',
                description:
                    'When you use our app, we collect a variety of data to provide and improve our services. This includes personal information such as your name, phone number, shipping and billing addresses, payment details. We also gather non-personal information like device type, operating system, IP address, browser type, and usage data including pages viewed, time spent, and search queries. Additionally, we collect tracking and cookies data through session, preference, and security cookies, as well as web beacons, tags, and scripts. Location data, both approximate (based on IP address), is collected to enhance service delivery. Communication data from customer support interactions and your preferences for marketing communications and notifications are also gathered. This comprehensive data collection enables us to process transactions, offer customer support, personalize your experience, improve our app, conduct analytics, ensure security, and comply with legal requirements.',
              ),
              TitleAndDescWidget(
                title: '3. Use of your personal data',
                description:
                    'We use your personal data to provide, improve, and personalize our services. This includes processing transactions, sending order confirmations, and providing customer support. We use your data to enhance our app\'s functionality, ensuring a smooth and personalized user experience. Your information helps us communicate with you, sending important updates, marketing materials, and promotional offers based on your preferences. We also use your data to conduct analytics and research, which aids in the development of new features and services. Furthermore, your data is crucial for ensuring security, preventing fraud, and complying with legal obligations. By leveraging your personal data, we aim to deliver a more efficient, secure, and tailored service to meet your needs and expectations.',
              ),
              TitleAndDescWidget(
                title: '4. Disclosure of your personal data',
                description:
                    'We may disclose your personal data to third-party service providers for tasks such as payment processing, data analysis, email delivery, hosting, customer service, and marketing assistance, ensuring they only use your data for these purposes. In the event of a merger, acquisition, or asset sale, your data may be transferred to the acquiring company with prior notice. We may also disclose your data to comply with legal obligations, protect our rights, enforce our terms, investigate fraud, or in response to valid requests by public authorities. With your explicit consent, we may share your data with partners for marketing purposes. Additionally, we may share your data with our affiliates, requiring them to honor this privacy policy. These disclosures help us maintain service provision, comply with legal requirements, and protect our rights and user safety.',
              ),
              TitleAndDescWidget(
                title: '5. Data security',
                description:
                    'We prioritize the security of your personal data and implement a variety of measures to protect it from unauthorized access, use, disclosure, alteration, or destruction. These measures include using secure server software (SSL) to encrypt financial information, restricting access to personal data to employees, contractors, and agents who need to know that information to process it, and ensuring they are subject to strict contractual confidentiality obligations. We regularly review our data collection, storage, and processing practices, including physical security measures, to guard against unauthorized access to systems. While we strive to use commercially acceptable means to protect your personal data, please be aware that no method of transmission over the internet or method of electronic storage is 100% secure. Therefore, we cannot guarantee its absolute security.',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
