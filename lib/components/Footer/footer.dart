import 'package:admin/constants/constants.dart';
import 'package:flutter/material.dart';

class Footer extends StatelessWidget {
 const Footer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Container(
      padding: EdgeInsets.only(top: 50.0),
      color: kPrimaryDarkColor,
      child: Column(
        children: [
          Container(
            child: Wrap(
              alignment: WrapAlignment.spaceEvenly,
              children: [
                SizedBox(
                   width: screenWidth  >= 800 ? 300.0 : 300.0,
                  child: Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(bottom: 15.0),
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.work_outline,
                                    size: 27,
                                    color: Colors.white,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 15.0),
                                    child: Text(
                                      "Jobpilot",
                                      style: TextStyle(
                                          fontSize: 20.0,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        TextButton(
                          onPressed: () {},
                          child: Text(
                            "Call Now: 012 573 911",
                            style: TextStyle(color: kPrimaryfooter),
                          ),
                        ),
                        TextButton(
                          onPressed: () {},
                          child: Text(
                            "Phnom Penh Cambodia",
                            style: TextStyle(color: kPrimaryfooter),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: screenWidth  >= 800 ? 300.0 : 200.0,
                  child: Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(bottom: 15.0),
                          child: Text(
                            "Quick Link",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                        TextButton(
                          onPressed: () {},
                          child: Column(
                            children: [
                              Text(
                                "About",
                                style: TextStyle(
                                  color: kPrimaryfooter,
                                ),
                              ),
                            ],
                          ),
                        ),
                        TextButton(
                          onPressed: () {},
                          child: Column(
                            children: [
                              Text(
                                "Contact",
                                style: TextStyle(
                                  color: kPrimaryfooter,
                                ),
                              ),
                            ],
                          ),
                        ),
                        TextButton(
                          onPressed: () {},
                          child: Column(
                            children: [
                              Text(
                                "Pricing",
                                style: TextStyle(
                                  color: kPrimaryfooter,
                                ),
                              ),
                            ],
                          ),
                        ),
                        TextButton(
                          onPressed: () {},
                          child: Column(
                            children: [
                              Text(
                                "Blog",
                                style: TextStyle(
                                  color: kPrimaryfooter,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                 width: screenWidth  >= 800 ? 300.0 : 200.0,
                  child: Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(bottom: 15.0),
                          child: Text( 
                            "Candidate",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                        TextButton(
                          onPressed: () {},
                          child: Column(
                            children: [
                              Text(
                                "Browse Jobs",
                                style: TextStyle(
                                  color: kPrimaryfooter,
                                ),
                              ),
                            ],
                          ),
                        ),
                        TextButton(
                          onPressed: () {},
                          child: Column(
                            children: [
                              Text(
                                "Browes Employers",
                                style: TextStyle(
                                  color: kPrimaryfooter,
                                ),
                              ),
                            ],
                          ),
                        ),
                        TextButton(
                          onPressed: () {},
                          child: Column(
                            children: [
                              Text(
                                "Candidate Dashborad",
                                style: TextStyle(
                                  color: kPrimaryfooter,
                                ),
                              ),
                            ],
                          ),
                        ),
                        TextButton(
                          onPressed: () {},
                          child: Column(
                            children: [
                              Text(
                                "Saved Jobs",
                                style: TextStyle(
                                  color: kPrimaryfooter,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: screenWidth  >= 800 ? 300.0 : 200.0,
                  child: Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(bottom: 15.0),
                          child: Text(
                            "Employers",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                        TextButton(
                          onPressed: () {},
                          child: Column(
                            children: [
                              Text(
                                "Posts a Job",
                                style: TextStyle(
                                  color: kPrimaryfooter,
                                ),
                              ),
                            ],
                          ),
                        ),
                        TextButton(
                          onPressed: () {},
                          child: Column(
                            children: [
                              Text(
                                "Browers Candidates",
                                style: TextStyle(
                                  color: kPrimaryfooter,
                                ),
                              ),
                            ],
                          ),
                        ),
                        TextButton(
                          onPressed: () {},
                          child: Column(
                            children: [
                              Text(
                                "Employers Dashboard",
                                style: TextStyle(
                                  color: kPrimaryfooter,
                                ),
                              ),
                            ],
                          ),
                        ),
                        TextButton(
                          onPressed: () {},
                          child: Column(
                            children: [
                              Text(
                                "Applications",
                                style: TextStyle(
                                  color: kPrimaryfooter,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: screenWidth  >= 800 ? 300.0 : 200.0,
                  child: Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(bottom: 15.0),
                          child: Text(
                            "Support",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                        TextButton(
                          onPressed: () {},
                          child: Column(
                            children: [
                              Text(
                                "Faqs",
                                style: TextStyle(
                                  color: kPrimaryfooter,
                                ),
                              ),
                            ],
                          ),
                        ),
                        TextButton(
                          onPressed: () {},
                          child: Column(
                            children: [
                              Text(
                                "Privacy",
                                style: TextStyle(
                                  color: kPrimaryfooter,
                                ),
                              ),
                            ],
                          ),
                        ),
                        TextButton(
                          onPressed: () {},
                          child: Column(
                            children: [
                              Text(
                                "Terms & Canditions",
                                style: TextStyle(
                                  color: kPrimaryfooter,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 10.0),
          Container(
            decoration: BoxDecoration(
              border: Border(
                top: BorderSide(
                  color: Colors.white,
                  width: 1.0,
                ),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 10.0, bottom: 10.0),
                  child: Text(
                    "2024@ Job Board KH",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
