import 'package:flutter/material.dart';

class MostPopular extends StatelessWidget {
  const MostPopular({Key? key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Container(
      padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 10.0),
      decoration: BoxDecoration(color: Colors.white),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Text(
              "Most Popular Positions",
              style: TextStyle(
                  fontSize: screenWidth >= 800 ? 30.0 : 20.0,
                  fontWeight: FontWeight.bold,
                   color: Colors.black),
            ),
          ),
          SizedBox(height: 20.0),
          Container(
            child: Wrap(
              alignment: WrapAlignment.spaceEvenly,
              children: [
                _buildPosition(
                  title: "Anesthesiologists",
                  count: "45,904 Open Positions",
                  screenWidth: screenWidth,
                ),
                _buildPosition(
                  title: "Surgeons",
                  count: "50,364 Open Positions",
                  screenWidth: screenWidth,
                ),
                _buildPosition(
                  title: "Obstetricians Gynecologists",
                  count: "4,233 Open Positions",
                  screenWidth: screenWidth,
                ),
                _buildPosition(
                  title: "Orthodontists",
                  count: "230 Open Positions",
                  screenWidth: screenWidth,
                ),
                _buildPosition(
                  title: "Maxillofacial Surgeons",
                  count: "20,453 Open Positions",
                  screenWidth: screenWidth,
                ),
                _buildPosition(
                  title: "Software Developers",
                  count: "520,343 Open Positions",
                  screenWidth: screenWidth,
                ),
                _buildPosition(
                  title: "Psychiatrists",
                  count: "45,004 Open Positions",
                  screenWidth: screenWidth,
                ),
                _buildPosition(
                  title: "Data Scientists",
                  count: "50,364 Open Positions",
                  screenWidth: screenWidth,
                ),
                _buildPosition(
                  title: "Financial Managers",
                  count: "4,033 Open Positions",
                  screenWidth: screenWidth,
                ),
                _buildPosition(
                  title: "Management Analysts",
                  count: "100,434 Open Positions",
                  screenWidth: screenWidth,
                ),
                _buildPosition(
                  title: "IT Managers",
                  count: "20,233 Open Positions",
                  screenWidth: screenWidth,
                ),
                _buildPosition(
                  title: "Operations Research Analysts",
                  count: "30,233 Open Positions",
                  screenWidth: screenWidth,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildPosition({
    required String title,
    required String count,
    required double screenWidth,
  }) {
    return Container(
      padding: EdgeInsets.only(left: 40.0, bottom: 30.0),
      width:  screenWidth >= 800 ? 300.0 : 170.0,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: screenWidth >= 800 ? 15.0 : 12.0,
              fontWeight: FontWeight.bold,
               color: Colors.black
            ),
          ),
          Text(
            count,
            style: TextStyle(
              fontSize: screenWidth >= 800 ? 12.0 : 10.0,
              fontWeight: FontWeight.w100,
               color: Colors.black
            ),
          ),
        ],
      ),
    );
  }
}
