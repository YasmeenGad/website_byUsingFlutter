import 'package:flutter/material.dart';
import 'package:website/constants.dart';
import 'package:website/projects.dart';
import 'package:website/recommendations.dart';
import 'package:flutter/src/painting/basic_types.dart';
import 'package:website/resbonsive.dart';

class Recommendations extends StatefulWidget {
  const Recommendations({super.key});

  @override
  State<Recommendations> createState() => _RecommendationsState();
}

class _RecommendationsState extends State<Recommendations> {
  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Padding(
        padding: const EdgeInsets.only(
          top: kDefaultPadding,
        ),
        child: Text(
          "Client Recommendations",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
      SizedBox(
        height: kDefaultPadding,
      ),
      if (Responsive.isDesktop(context))
        GridView.builder(
          shrinkWrap: true,
          itemCount: demoRecommendations.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: demoRecommendations.length,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
          ),
          itemBuilder: (context, index) {
            return Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: kDefaultPadding / 2),
              child: Container(
                padding: EdgeInsets.all(kDefaultPadding),
                width: 700,
                color: kSecondaryColor,
                child: Column(children: [
                  ListTile(
                    leading: CircleAvatar(
                      radius: 30,
                      backgroundImage:
                          AssetImage(demoRecommendations[index].image!),
                    ),
                    title: Text(demoRecommendations[index].name!),
                    subtitle: Text(demoRecommendations[index].source!),
                  ),
                  Expanded(
                    child: Text(
                      demoRecommendations[index].text!,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 4,
                    ),
                  )
                ]),
              ),
            );
          },
        )
      else if (Responsive.ismobile(context))
        GridView.builder(
          shrinkWrap: true,
          itemCount: demoRecommendations.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 1,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
          ),
          itemBuilder: (context, index) {
            return Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: kDefaultPadding / 2),
              child: Container(
                padding: EdgeInsets.all(kDefaultPadding),
                width: 700,
                color: kSecondaryColor,
                child: Column(children: [
                  ListTile(
                    leading: CircleAvatar(
                      radius: 30,
                      backgroundImage:
                          AssetImage(demoRecommendations[index].image!),
                    ),
                    title: Text(demoRecommendations[index].name!),
                    subtitle: Text(demoRecommendations[index].source!),
                  ),
                  Expanded(
                    child: Text(
                      demoRecommendations[index].text!,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 4,
                    ),
                  )
                ]),
              ),
            );
          },
        )
      else if (Responsive.ismobilelarge(context))
        GridView.builder(
          shrinkWrap: true,
          itemCount: demoRecommendations.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 1,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
          ),
          itemBuilder: (context, index) {
            return Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: kDefaultPadding / 2),
              child: Container(
                padding: EdgeInsets.all(kDefaultPadding),
                width: 700,
                color: kSecondaryColor,
                child: Column(children: [
                  ListTile(
                    leading: CircleAvatar(
                      radius: 30,
                      backgroundImage:
                          AssetImage(demoRecommendations[index].image!),
                    ),
                    title: Text(demoRecommendations[index].name!),
                    subtitle: Text(demoRecommendations[index].source!),
                  ),
                  Expanded(
                    child: Text(
                      demoRecommendations[index].text!,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 4,
                    ),
                  )
                ]),
              ),
            );
          },
        )
      else if (Responsive.istablets(context))
        GridView.builder(
          shrinkWrap: true,
          itemCount: demoRecommendations.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
          ),
          itemBuilder: (context, index) {
            return Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: kDefaultPadding / 2),
              child: Container(
                padding: EdgeInsets.all(kDefaultPadding),
                width: 700,
                color: kSecondaryColor,
                child: Column(children: [
                  ListTile(
                    leading: CircleAvatar(
                      radius: 30,
                      backgroundImage:
                          AssetImage(demoRecommendations[index].image!),
                    ),
                    title: Text(demoRecommendations[index].name!),
                    subtitle: Text(demoRecommendations[index].source!),
                  ),
                  Expanded(
                    child: Text(
                      demoRecommendations[index].text!,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 4,
                    ),
                  )
                ]),
              ),
            );
          },
        )
    ]);
  }
}
