import 'package:admin/routes/route_path.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class NameInHomepage extends StatelessWidget {
  const NameInHomepage({Key? key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 40.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              child: Column(
                children: [
                  Text(
                    "Find a job that suits \nyour interest & skills",
                    style: TextStyle(
                        fontSize: screenWidth > 800 ? 40.0 : 30.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 10.0),
                  Text(
                    "Aliquam vitae turpis in diam convaliis finibus in risus\n Nullam in scelerispue leo eget sollicitudin velit bestibulum",
                    style: TextStyle(
                        fontSize: screenWidth > 800 ? 15.0 : 10.0,
                        fontWeight: FontWeight.w100,
                        color: Colors.black),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 20.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: screenWidth > 800 ? 200.0 : 150.0,
                        height: screenWidth > 800 ? 50.0 : 40.0,
                        child: ElevatedButton(
                          onPressed: () {
                            context.go(RoutePath.login);
                          },
                          style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50.0),
                            ),
                            foregroundColor: Colors.white,
                            backgroundColor: Colors.blue,
                            padding: EdgeInsets.symmetric(horizontal: 20.0),
                          ),
                          child: Text('Get Started'),
                        ),
                      ),
                      SizedBox(width: 20.0),
                      SizedBox(
                        width: screenWidth > 800 ? 200.0 : 150.0,
                        height: screenWidth > 800 ? 50.0 : 40.0,
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50.0),
                            ),
                            foregroundColor: Colors.white,
                            backgroundColor: Colors.blue,
                            padding: EdgeInsets.symmetric(horizontal: 20.0),
                          ),
                          child: Text('Fine Jobs'),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20.0),
                ],
              ),
            ),
            if (screenWidth >= 600)
              Image.asset(
                'assets/imagepage.jpg',
                height: screenWidth > 800 ? 400.0 : 300.0,
                width: screenWidth > 800 ? 400.0 : 300.0,
                fit: BoxFit.contain,
              ),
          ],
        ),
      ),
    );
  }
}
