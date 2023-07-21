import 'package:flutter/material.dart';
import 'package:website/constants.dart';
import 'package:website/main_screen.dart';
import 'package:website/resbonsive.dart';
import 'package:website/side_menu_section.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({
    super.key,
  });

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: Responsive.isDesktop(context)
            ? null
            : AppBar(
                backgroundColor: kBgColor,
                leading: Builder(builder: (context) {
                  return IconButton(
                      onPressed: () {
                        Scaffold.of(context).openDrawer();
                      },
                      icon: Icon(Icons.menu));
                })),
        drawer: SideMenuSection(),
        body: SafeArea(
            child: Center(
          child: Container(
            constraints: BoxConstraints(maxWidth: 1440),
            child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
              if (Responsive.isDesktop(context))
                Expanded(flex: 2, child: SideMenuSection()),
              Expanded(flex: 7, child: MainScreen()),
            ]),
          ),
        )));
  }
}
