import 'package:flutter/material.dart';
import 'package:website/constants.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Goals extends StatefulWidget {
  const Goals({super.key});

  @override
  State<Goals> createState() => _GoalsState();
}

class _GoalsState extends State<Goals> {
  Widget buildgoals({text}) {
    return Padding(
      padding: const EdgeInsets.only(bottom: kDefaultPadding / 2),
      child: Row(
        children: [
          new SvgPicture.asset("assets/icons/check.svg"),
          SizedBox(
            width: kDefaultPadding / 2,
          ),
          Text(text),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: kDefaultPadding),
          child: Text(
            "Goals",
            style: TextStyle(fontSize: 18, color: Colors.white),
          ),
        ),
        buildgoals(text: "Planning stage"),
        buildgoals(text: "Development"),
        buildgoals(text: "Execution phase"),
        buildgoals(text: "New way for living"),
      ],
    );
  }
}
