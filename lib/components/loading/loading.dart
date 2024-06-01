// import 'package:admin/controllers/api/api.dart';
// import 'package:admin/controllers/api/auth.dart';
// import 'package:admin/models/api_respones.dart';
// import 'package:admin/routes/route_path.dart';
// import 'package:flutter/material.dart';
// import 'package:go_router/go_router.dart';

// class Loading extends StatefulWidget {
//   const Loading({super.key});

//   @override
//   State<Loading> createState() => _LoadingState();
// }

// class _LoadingState extends State<Loading> {
//   @override
//   void _laodUserInfo() async {
//     String token = await getToken();
//     if (token == '') {
//       context.go(RoutePath.login);
//     } else {
//       Apiresponse response = await user();
//       if (response.error == null) {
//         context.go(RoutePath.home);
//       } else if (response.error == unauthorized) {
//         context.go(RoutePath.login);
//       } else {
//         ScaffoldMessenger.of(context).showSnackBar(
//           SnackBar(
//             content: Text('${response.error}'),
//           ),
//         );
//       }
//     }
//   }

//   Widget build(BuildContext context) {
//     double screenWidth = MediaQuery.of(context).size.width;
//     return Container(
//       height: screenWidth,
//       color: Colors.white,
//       child: CircularProgressIndicator(),
//     );
//   }
// }
