import 'package:flutter/material.dart';

class Information extends StatelessWidget {
  const Information({Key? key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        child: Wrap(
          alignment: WrapAlignment.spaceEvenly,
          children: [
            _buildInfoContainer(
              icon: Icons.work_outline,
              title: "Live Job",
              value: "1,75,324",
              screenWidth: screenWidth,
            ),
            _buildInfoContainer(
              icon: Icons.comment_bank,
              title: "Companies",
              value: "97,354",
              screenWidth: screenWidth,
            ),
            _buildInfoContainer(
              icon: Icons.people,
              title: "Candidates",
              value: "38,47,154",
              screenWidth: screenWidth,
            ),
            _buildInfoContainer(
              icon: Icons.work_outline,
              title: "New Jobs",
              value: "7,532",
              screenWidth: screenWidth,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildInfoContainer({
    required IconData icon,
    required String title,
    required String value,
    required double screenWidth,
  }) {
    return Padding(
      padding: EdgeInsets.only(top: 10.0, bottom: 10.0),
      child: Container(
        width: screenWidth >= 800 ? 200.0 : 150.0,
        height: screenWidth >= 800 ? 100.0 : 80.0,
        decoration: BoxDecoration(
          color: Colors.white,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.all(20.0),
              child: Icon(
                icon,
                size: screenWidth >= 800 ? 40.0 : 30.0,
                color: Colors.blue,
              ),
            ),
            SizedBox(width: 10.0),
            Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 25.0),
                  child: Column(
                    children: [
                      Text(
                        value,
                        style: TextStyle(
                            fontSize: screenWidth >= 800 ? 20.0 : 15.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                      Text(
                        title,
                        style: TextStyle(
                            fontSize: screenWidth >= 800 ? 12.0 : 10.0,
                            fontWeight: FontWeight.w100,
                            color: Colors.black),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
