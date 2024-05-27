import 'package:admin/routes/route_model.dart';
import 'package:admin/routes/route_path.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const primaryColor = Color(0xFF2697FF);
const secondaryColor = Color(0xFF2A2D3E);
const bgColor = Color(0xFF212332);
const kPrimaryColor = Color.fromARGB(255, 33, 150, 243);
const kPrimaryLightColor = Color.fromARGB(255, 233, 233, 233);
const kPrimaryHomepage = Color.fromARGB(247, 247, 248, 255);
const kPrimaryDarkColor = Color.fromARGB(255, 31, 31, 31);
const kPrimaryfooter = Color.fromARGB(146, 255, 255, 255);
const kPrimaryMenuDashboard =  Color.fromARGB(255, 0, 22, 39);
const KkPrimaryDetail =Color.fromARGB(255, 255, 255, 255);

const defaultPadding = 16.0;


class AppColors {
  static const Color backColor = Color(0xffF6F6F6);
  static const Color mainBlueColor = Color(0xff005BE0);
  static const Color blueDarkColor = Color(0xff252B5C);
  static const Color textColor = Color(0xff53587A);
  static const Color greyColor = Color(0xffAAAAAA);
  static const Color whiteColor = Color(0xffFFFFFF);
}

class AppIcons {
  static const String emailIcon = 'assets/images/EmailIcon.png';
  static const String lockIcon = 'assets/images/lockIcon.png';
  static const String eyeIcon = 'assets/images/EyeIcon.png';
  static const String userIcon = 'assets/images/user.jpeg';
}

TextStyle ralewayStyle = GoogleFonts.raleway();


List<RouteModel> navItem = [
  RouteModel(title: "Home", path: RoutePath.home),
  RouteModel(title: "Fine Job", path: RoutePath.finejob),
  RouteModel(title: "Dashboard", path: RoutePath.dashboard),
  RouteModel(title: "Post A Job", path: RoutePath.postajob),
];

List<IconData> navIcon = [
  Icons.home,
  Icons.search,
  Icons.dashboard,
  Icons.people,
  Icons.headset,
  Icons.post_add_sharp,
];
