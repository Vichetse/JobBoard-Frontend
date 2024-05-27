import 'package:admin/controllers/MenuAppController.dart';
import 'package:admin/screens/auth/login.dart';
import 'package:admin/screens/auth/register.dart';
import 'package:admin/screens/finejob/fine_job.dart';
import 'package:admin/screens/homepage/home_page.dart';
import 'package:admin/screens/dashboard/main/main_screen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

class MyWebRouter {
  final GoRouter router = GoRouter(
    routes: [
      GoRoute(
        path: '/dashboard',
        pageBuilder: (context, state) {
          return MaterialPage(
            child: MultiProvider(
              providers: [
                ChangeNotifierProvider(
                  create: (context) => MenuAppController(),
                ),
              ],
              child: MainScreen(),
            ),
          );
        },
      ),

       GoRoute(
        path: '/',
        builder: (context, state) {
          return HomePage();
        },
      ),
        GoRoute(
        path: '/register',
        builder: (context, state) {
          return RegisterScreen();
        },
      ),
       GoRoute(
        path: '/login',
        builder: (context, state) {
          return LoginScreen();
        },
      ),
       GoRoute(
        path: '/fine_job',
        builder: (context, state) {
          return FineJob();
        },
      ),
    ],
  );
}
