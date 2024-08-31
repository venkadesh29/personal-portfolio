import 'package:flutter/material.dart';
import 'package:personal_portfolio/constants/colors.dart';
import 'package:personal_portfolio/constants/nav_items.dart';
import 'package:personal_portfolio/widgets/site_logo.dart';

import '../styles/style.dart';
import '../widgets/drawer_mobile.dart';
import '../widgets/header_mobile.dart';


class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: CustomColor.scaffoldBg,
      endDrawer: const DrawerMobile(),
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          //Main
          //HeaderDesktop(),
          HeaderMobile(
            onLogoTap: () {},
            onMenuTap: () {
              scaffoldKey.currentState?.openEndDrawer();
            },
          ),
          //Skills
          Container(
            height: 500,
            width: double.maxFinite,
            color: Colors.blueGrey,
          ),
          //Projects
          Container(
            height: 500,
            width: double.maxFinite,
          ),
          //Contact
          Container(
            height: 500,
            width: double.maxFinite,
            color: Colors.blueGrey,
          ),
          //footer
          Container(
            height: 500,
            width: double.maxFinite,
          ),
        ],
      ),
    );
  }
}
