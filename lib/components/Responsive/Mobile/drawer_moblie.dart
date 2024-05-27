import 'package:admin/constants/constants.dart';
import 'package:flutter/material.dart';

class DrawerMoblie extends StatelessWidget {
  const DrawerMoblie({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.only(
                top: 20.0,
                right: 20.0,
                left: 20.0,
                bottom: 10.0,
              ),
              child: IconButton(
                onPressed: () {
                },
                icon: const Icon(Icons.close),
              ),
            ),
          ),
          for (int i = 0; i < navIcon.length; i++)
            TextButton(
              onPressed: () {
              },
              child: ListTile(
                leading: Icon(navIcon[i]),
                title: Text(
                  navItem[i].title,
                  style: TextStyle(
                    fontSize: 12.0,
                    fontWeight: FontWeight.w200,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
