import 'package:flutter/material.dart';
import 'package:website/home_banner.dart';
import 'package:website/ourprojrcts.dart';
import 'package:website/recommendation.dart';

import 'icon_info.dart';
import 'ourprojrcts.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Column(
      children: [
        HomeBanner(),
        IconInfo(),
        Projects(),
        Recommendations(),
      ],
    ));
  }
}
