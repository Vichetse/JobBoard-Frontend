import 'package:flutter/material.dart';

class HowItWork extends StatelessWidget {
  const HowItWork({Key? key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Container(
      padding: EdgeInsets.only(top: 50.0, bottom: 70.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.only(bottom: 10.0),
            child: Text(
              "How it work",
              style: TextStyle(
                  fontSize:  screenWidth >= 800 ? 30.0 : 20.0,
                  fontWeight: FontWeight.bold,
                   color: Colors.black),
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: Wrap(
              alignment: WrapAlignment.spaceEvenly,
              children: [
                _buildStep(
                  icon: Icons.add_reaction_rounded,
                  title: "Create account",
                  description:
                      "Aliquam facilisis egpien, nec\ntempor leo tristique at",
                  screenWidth: screenWidth,
                ),
                _buildStep(
                  icon: Icons.cloud_upload,
                  title: "Upload CV/Resume",
                  description:
                      "Curabitur sit amet maximuns ligula Nam\na nuila ante Nam scodales",
                  screenWidth: screenWidth,
                ),
                _buildStep(
                  icon: Icons.saved_search_outlined,
                  title: "Find suitable job",
                  description:
                      "Phasellus quis eleifend ex Morbi nec\nfring nibh",
                  screenWidth: screenWidth,
                ),
                _buildStep(
                  icon: Icons.verified_sharp,
                  title: "Apply job",
                  description:
                      "Curabitur sit amet maximuns ligula Nam\na nuila ante Nam scodale purus",
                  screenWidth: screenWidth,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildStep({
    required IconData icon,
    required String title,
    required String description,
    required double screenWidth,
  }) {
    return Container(
      width: 180.0,
      margin: EdgeInsets.all(10.0),
      padding: EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: Colors.white,
      ),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(10.0),
            child: Icon(icon, size: 60.0, color: Colors.blue),
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 10.0),
            child: Text(
              title,
              style: TextStyle(
                  fontSize: screenWidth >= 800 ? 15.0 : 10.0,
                  fontWeight: FontWeight.w400, color: Colors.black),
            ),
          ),
          Text(
            description,
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: screenWidth >= 800 ? 10.0 : 8.0,
                fontWeight: FontWeight.w100, color: Colors.black),
          ),
        ],
      ),
    );
  }
}
