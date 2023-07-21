import 'package:flutter/material.dart';
import 'package:website/constants.dart';
import 'package:website/resbonsive.dart';

class HomeBanner extends StatefulWidget {
  const HomeBanner({super.key});

  @override
  State<HomeBanner> createState() => _HomeBannerState();
}

class _HomeBannerState extends State<HomeBanner> {
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: Responsive.ismobile(context) ? 1 : 1.7,
      child: Stack(fit: StackFit.expand, children: [
        Image.asset(
          "assets/images/background.jpg",
          fit: BoxFit.cover,
        ),
        Container(
          color: kDarkColor.withOpacity(0.10),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("build a great future \nfor all of us",
                  style: Responsive.isDesktop(context)
                      ? TextStyle(
                          fontSize: 60,
                          color: Colors.white,
                          fontWeight: FontWeight.bold)
                      : TextStyle(
                          fontSize: 40,
                          color: Colors.white,
                          fontWeight: FontWeight.bold)),
              SizedBox(
                height: kDefaultPadding,
              ),
              ElevatedButton(
                style: TextButton.styleFrom(
                    padding: EdgeInsets.symmetric(
                      vertical: kDefaultPadding,
                      horizontal: kDefaultPadding * 2,
                    ),
                    backgroundColor: kPrimaryColor),
                onPressed: () {},
                child: Text(
                  "CONTACT US",
                  style: TextStyle(color: kBgColor),
                ),
              )
            ],
          ),
        )
      ]),
    );
  }
}
