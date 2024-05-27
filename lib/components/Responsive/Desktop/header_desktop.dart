import 'package:admin/constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HeaderDesktop extends StatelessWidget {
  const HeaderDesktop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(right: 50.0, left: 50.0),
      height: 40.0,
      width: double.maxFinite,
      child: Row(
        children: [
          for (int i = 0; i < navItem.length; i++)
            TextButton(
              onPressed: () {
                 context.go(navItem[i].path);
              },
              child: Text(
                navItem[i].title,
                style: const TextStyle(
                    fontSize: 12.0,
                    fontWeight: FontWeight.w200,
                    color: Colors.black),
              ),
            ),
          const Spacer(),
          const Row(
            children: [
              Icon(Icons.phone, color: Colors.black),
              SizedBox(width: 10),
              Text(
                "012 573 911",
                style: const TextStyle(
                    fontSize: 12.0,
                    fontWeight: FontWeight.w200,
                    color: Colors.black),
              ),
            ],
          ),
          const SizedBox(width: 20),
          const Row(
            children: [
              Icon(Icons.language, color: Colors.black,),
              SizedBox(width: 10),
              Text(
                "English",
                style: const TextStyle(
                    fontSize: 12.0,
                    fontWeight: FontWeight.w200,
                    color: Colors.black),
              ),
            ],
          )
        ],
      ),
    );
  }
}
