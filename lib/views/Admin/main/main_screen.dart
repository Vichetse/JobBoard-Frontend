import 'package:admin/controllers/MenuAppController.dart';
import 'package:admin/components/Responsive/responsive.dart';
import 'package:admin/views/Admin/dashboard_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'components/side_menu.dart';

class AdminMainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: context.read<MenuAppController>().scaffoldKey,
      drawer: AdminSideMenu(),
      body: SafeArea(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // We want this side menu only for large screen
            if (Responsive.isDesktop(context))
              Expanded(
                // default flex = 1
                // and it takes 1/6 part of the screen
                child: AdminSideMenu(),
              ),
            Expanded(
              // It takes 5/6 part of the screen
              flex: 5,
              child: AdminDashboard(),
            ),
          ],
        ),
      ),
    );
  }
}
