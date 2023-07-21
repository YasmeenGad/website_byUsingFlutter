import 'package:flutter/material.dart';
import 'package:website/constants.dart';
import 'package:website/resbonsive.dart';

class IconInfo extends StatefulWidget {
  const IconInfo({super.key});

  @override
  State<IconInfo> createState() => _IconInfoState();
}

class _IconInfoState extends State<IconInfo> {
  Widget buildIcon({icon, title, text}) {
    return Column(
      children: [
        Icon(icon, size: 45),
        SizedBox(height: 10),
        Text(
          title,
          style: TextStyle(color: kPrimaryColor, fontSize: 20),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          text,
          style: TextStyle(
            fontSize: 20,
          ),
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(kDefaultPadding * 3),
      child: Responsive.ismobile(context)
          ? Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: buildIcon(
                          icon: Icons.supervisor_account,
                          title: "67+",
                          text: "Client"),
                    ),
                    Expanded(
                      child: buildIcon(
                          icon: Icons.location_on,
                          title: "139+",
                          text: "Projects"),
                    ),
                  ],
                ),
                SizedBox(
                  height: kDefaultPadding * 3,
                ),
                Row(
                  children: [
                    Expanded(
                        child: buildIcon(
                            icon: Icons.public,
                            title: "30+",
                            text: "Countries")),
                    Expanded(
                        child: buildIcon(
                            icon: Icons.star, title: "13k+", text: "Stars")),
                  ],
                ),
              ],
            )
          : Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: buildIcon(
                      icon: Icons.supervisor_account,
                      title: "67+",
                      text: "Client"),
                ),
                Expanded(
                  child: buildIcon(
                      icon: Icons.location_on, title: "139+", text: "Projects"),
                ),
                Expanded(
                    child: buildIcon(
                        icon: Icons.public, title: "30+", text: "Countries")),
                Expanded(
                    child: buildIcon(
                        icon: Icons.star, title: "13k+", text: "Stars")),
              ],
            ),
    );
  }
}
