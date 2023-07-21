import 'package:flutter/material.dart';
import 'package:website/constants.dart';

class ContactMenu extends StatefulWidget {
  const ContactMenu({super.key});

  @override
  State<ContactMenu> createState() => _ContactMenuState();
}

class _ContactMenuState extends State<ContactMenu> {
  Widget buildContactInfo({title, text}) {
    return Padding(
      padding: const EdgeInsets.only(bottom: kDefaultPadding / 2),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: TextStyle(color: Colors.white),
          ),
          Text(
            text,
            style: TextStyle(color: Colors.white),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        buildContactInfo(
          title: "Address",
          text: "Station Street 5",
        ),
        buildContactInfo(
          title: "Country",
          text: "Austria",
        ),
        buildContactInfo(
          title: "Email",
          text: "Email@website.com",
        ),
        buildContactInfo(
          title: "Phone",
          text: "+43 123 456 789",
        ),
        buildContactInfo(
          title: "Website",
          text: "My@Website.com",
        ),
      ],
    );
  }
}
