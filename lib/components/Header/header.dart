import 'package:admin/Routes/route_path.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class Header extends StatelessWidget {
  const Header({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: screenWidth >= 768 ? 60.0 : 20.0,
        vertical: 10.0,
      ),
      color: Colors.white,
      child: Row(
        children: [
          Icon(
            Icons.work_outline,
            size: screenWidth >= 800 ? 40.0 : 20.0,
          ),
          SizedBox(width: 10),
          Text(
            "Job Board Kh",
            style: TextStyle(
                fontSize: screenWidth >= 800 ? 20.0 : 15.0,
                fontWeight: FontWeight.bold,
                color: Colors.black),
          ),
          SizedBox(width: 30),
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 10),
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.grey,
                ),
                borderRadius: BorderRadius.circular(5),
              ),
              child: Row(
                children: [
                  Icon(
                    Icons.search,
                    color: Colors.black,
                  ),
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Job title, keyword, company',
                        hintStyle: TextStyle(color: Colors.black),
                        border: InputBorder.none,
                      ),
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Spacer(),
          ElevatedButton(
            onPressed: () {
              context.go(RoutePath.login);
            },
            style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.zero,
              ),
              foregroundColor: Colors.blue,
              backgroundColor: Colors.white,
              minimumSize: Size(80, 36),
            ),
            child: Text(
              'Sign In',
              style: TextStyle(
                color: Colors.blue,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(width: 20),
          if (screenWidth >= 800)
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.zero,
                ),
                foregroundColor: Colors.white,
                backgroundColor: Colors.blue,
                minimumSize: Size(110, 36),
              ),
              child: Text(
                'Post A Job',
                style: TextStyle(color: Colors.white),
              ),
            )
        ],
      ),
    );
  }
}
