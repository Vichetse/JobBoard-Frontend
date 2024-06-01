import 'package:admin/Components/Header/header.dart';
import 'package:admin/components/Responsive/Desktop/header_desktop.dart';
import 'package:admin/components/Responsive/Mobile/drawer_moblie.dart';
import 'package:admin/components/Responsive/Mobile/header_mobile.dart';
import 'package:admin/constants/constants.dart';
import 'package:admin/views/homepage/category.dart';
import 'package:admin/views/homepage/how_it_work.dart';
import 'package:admin/views/homepage/information_to_show.dart';
import 'package:admin/views/homepage/most_popular.dart';
import 'package:admin/views/homepage/name_in_homepage.dart';
import 'package:flutter/material.dart';

import '../../components/Footer/footer.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return Scaffold(
        backgroundColor: kPrimaryHomepage,
        key: scaffoldKey,
        endDrawer: constraints.maxWidth >= 800.0 ? null : DrawerMoblie(),
        body: ListView(
          scrollDirection: Axis.vertical,
          children: [
            if (constraints.maxWidth >= 800.0)
              HeaderDesktop()
            else
              HeaderMobile(onMenuTab: () {
                scaffoldKey.currentState?.openEndDrawer();
              }),
            Header(),
            NameInHomepage(),
            Information(),
            SizedBox(height: 70.0),
            MostPopular(),
            HowItWork(),
            Category(),
            SizedBox(height: 50.0),
            Footer(),
          ],
        ),
      );
    });
  }
}
