import 'package:flutter/material.dart';
import 'package:website/constants.dart';
import 'package:website/contact_menu.dart';
import 'package:website/goals.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'logo.dart';

class SideMenuSection extends StatefulWidget {
  const SideMenuSection({super.key});

  @override
  State<SideMenuSection> createState() => _SideMenuSectionState();
}

class _SideMenuSectionState extends State<SideMenuSection> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Logo(),
          Expanded(
              child: SingleChildScrollView(
            padding: EdgeInsets.all(kDefaultPadding),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              ContactMenu(),
              Divider(),
              Goals(),
              Divider(),
              SizedBox(
                height: kDefaultPadding,
              ),
              TextButton(
                  onPressed: () {},
                  child: FittedBox(
                    child: Row(
                      children: [
                        new SvgPicture.asset("assets/icons/download.svg"),
                        SizedBox(
                          width: kDefaultPadding / 2,
                        ),
                        Text(
                          "Download Brochure",
                          style: TextStyle(color: Colors.white, fontSize: 17),
                        )
                      ],
                    ),
                  )),
              Container(
                color: kSecondaryColor,
                margin: EdgeInsets.only(top: kDefaultPadding * 2),
                child: Row(
                  children: [
                    Spacer(),
                    IconButton(
                        onPressed: () {},
                        icon:
                            new SvgPicture.asset("assets/icons/linkedin.svg")),
                    IconButton(
                        onPressed: () {},
                        icon: new SvgPicture.asset("assets/icons/github.svg")),
                    IconButton(
                        onPressed: () {},
                        icon: new SvgPicture.asset("assets/icons/twitter.svg")),
                    IconButton(
                        onPressed: () {},
                        icon: new SvgPicture.asset("assets/icons/dribble.svg")),
                    Spacer(),
                  ],
                ),
              )
            ]),
          ))
        ],
      ),
    );
  }
}
