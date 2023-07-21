import 'package:flutter/material.dart';

import 'constants.dart';

class Logo extends StatelessWidget {
  const Logo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.4,
      child: Container(
        color: kSecondaryColor,
        child:
            Column(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
          Spacer(
            flex: 2,
          ),
          Image(
            image: AssetImage("assets/images/logo.png"),
            width: 70,
          ),
          Spacer(),
          Text(
            "Real State",
            style: TextStyle(
              fontSize: 15,
            ),
          ),
          Text(
            "Modern Home \n Great interior Design",
            textAlign: TextAlign.center,
            style: TextStyle(height: 1.5),
          ),
          Spacer(
            flex: 2,
          ),
        ]),
      ),
    );
  }
}
