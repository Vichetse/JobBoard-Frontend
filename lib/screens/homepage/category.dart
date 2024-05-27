import 'package:admin/constants/constants.dart';
import 'package:flutter/material.dart';

class Category extends StatelessWidget {
  const Category({Key? key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          Container(
            child: Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 30.0, left: 50.0),
                  child: Text(
                    "Popular categories",
                    style: TextStyle(
                        fontSize: screenWidth >= 800 ? 30.0 : 20.0,
                        fontWeight: FontWeight.bold, color: Colors.black),
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: Wrap(
              alignment: WrapAlignment.spaceEvenly,
              children: [
                _buildCategory(
                  icon: Icons.work,
                  title: "Graphics & Design",
                  count: "124 Open positions",
                  screenWidth: screenWidth,
                ),
                _buildCategory(
                  icon: Icons.code_outlined,
                  title: "Code & Programming",
                  count: "312 Open positions",
                  screenWidth: screenWidth,
                ),
                _buildCategory(
                  icon: Icons.mark_chat_read_outlined,
                  title: "Digital & Marketing",
                  count: "234 Open positions",
                  screenWidth: screenWidth,
                ),
                _buildCategory(
                  icon: Icons.video_library_outlined,
                  title: "Video & Animation",
                  count: "247 Open positions",
                  screenWidth: screenWidth,
                ),
                _buildCategory(
                  icon: Icons.music_note_outlined,
                  title: "Music & Audio",
                  count: "204 Open positions",
                  screenWidth: screenWidth,
                ),
                _buildCategory(
                  icon: Icons.work,
                  title: "Account & Finance",
                  count: "129 Open positions",
                  screenWidth: screenWidth,
                ),
                _buildCategory(
                  icon: Icons.code_outlined,
                  title: "Health & Care",
                  count: "203 Open positions",
                  screenWidth: screenWidth,
                ),
                _buildCategory(
                  icon: Icons.data_array_outlined,
                  title: "Data & Science",
                  count: "57 Open positions",
                  screenWidth: screenWidth,
                ),
                _buildCategory(
                  icon: Icons.video_library_outlined,
                  title: "Doctor",
                  count: "23 Open positions",
                  screenWidth: screenWidth,
                ),
                _buildCategory(
                  icon: Icons.music_note_outlined,
                  title: "Machine Learning",
                  count: "503 Open positions",
                  screenWidth: screenWidth,
                ),
                // Add more categories here
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildCategory({
    required IconData icon,
    required String title,
    required String count,
    required double screenWidth,
  }) {
    return Container(
      width: 300.0,
      height: 100.0,
      margin: EdgeInsets.all(10.0),
      padding: EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: kPrimaryHomepage,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.all(20.0),
            child: Icon(
              icon,
              size: screenWidth >= 800 ? 30.0 : 20.0, color: Colors.black
            ),
          ),
          SizedBox(width: 10.0),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                title,
                style: TextStyle(
                  fontSize: screenWidth >= 800 ? 15.0 : 10.0,
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
        ],
      ),
    );
  }
}
