import 'package:card_maker/constants/colors.dart';
import 'package:card_maker/widgets/text_widget.dart';
import 'package:flutter/material.dart';

class PrivacyPolicy extends StatelessWidget {
  const PrivacyPolicy({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: appColor,
        title: TextWidget(text: "Privacy Policy", fontSize: 24, fontWeight: FontWeight.bold, isTextCenter: false, textColor: Colors.white),),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Introduction",style: TextStyle(color: appColor,fontSize: 18,fontWeight: FontWeight.bold),),
              Text("Welcome to Card Maker. We are committed to protecting and respecting your privacy. This Privacy Policy explains how we collect, use, and share your personal information when you use our Card Maker App."),
              Text("Information We Collect",style: TextStyle(color: appColor,fontSize: 18,fontWeight: FontWeight.bold),),
              Text("Personal Information",style: TextStyle(color: appColor,fontSize: 16,fontWeight: FontWeight.bold),),
              Text("When you use our App, we may collect the following types of personal information:"),
              Text("Contact Information: Name, email address, and phone number."
                  "Card Information: Information you provide for the creation of your card,"
                  " such as names, titles, addresses, and other details."),
              Text("Usage Information",style: TextStyle(color: appColor,fontSize: 16,fontWeight: FontWeight.bold),),
              Text("We may collect information about how you use our App, "
                  "including:Device Information: Type of device, operating system, and browser type."
                  "Log Data: IP address, access times, and pages viewed."),
              Text("How We Use Your Information",style: TextStyle(color: appColor,fontSize: 18,fontWeight: FontWeight.bold),),
              Text("We use the information we collect to:"
                  "Provide, operate, and maintain our App."
                  "Generate and display a preview of your card."
                  "Allow you to download your created card."
                  "Communicate with you regarding your use of the App."
                  "Improve and personalize our services."),
              Text("Sharing Your Information",style: TextStyle(color: appColor,fontSize: 18,fontWeight: FontWeight.bold),),
              Text("We do not share your personal information with third parties except in the following circumstances:"
                  "Service Providers: We may share your information with third-party service providers who help us operate our App and provide our services."
                  "Legal Requirements: We may disclose your information if required by law or in response to valid requests by public authorities"),
              Text("Data Security",style: TextStyle(color: appColor,fontSize: 18,fontWeight: FontWeight.bold),),
              Text("We implement appropriate technical and organizational measures to protect your personal information from unauthorized access, use, alteration, or destruction."),
              Text("Data Retention",style: TextStyle(color: appColor,fontSize: 18,fontWeight: FontWeight.bold),),
              Text("We retain your personal information only for as long as necessary to fulfill the purposes for which we collected it, including any legal, accounting, or reporting requirements."),
              Text("Your Rights",style: TextStyle(color: appColor,fontSize: 18,fontWeight: FontWeight.bold),),
              Text("Depending on your location, you may have the following rights regarding your personal information:"
                  "Access: The right to access your personal information."
                  "Correction: The right to correct inaccurate or incomplete personal information."
                  "Deletion: The right to request the deletion of your personal information."
                  "Objection: The right to object to our processing of your personal information."),
              Text("Changes to This Privacy Policy",style: TextStyle(color: appColor,fontSize: 18,fontWeight: FontWeight.bold),),
              Text("We may update this Privacy Policy from time to time. We will notify you of any changes by posting the new Privacy Policy on our App. You are advised to review this Privacy Policy periodically for any changes"),
              Text("Contact Us"),
              Text("By using our App, you acknowledge that you have read and understood this Privacy Policy and agree to our collection, use, and sharing of your personal information as described herein."),
            ],
          ),
        ),
      ),
    );
  }
}
