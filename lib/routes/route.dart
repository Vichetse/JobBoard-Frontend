import 'package:admin/controllers/MenuAppController.dart';
import 'package:admin/views/Employer/main/main_screen.dart';
import 'package:admin/views/auth/login.dart';
import 'package:admin/views/auth/register.dart';
import 'package:admin/views/finejob/fine_job.dart';
import 'package:admin/views/homepage/home_page.dart';
import 'package:admin/views/Admin/main/main_screen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

class MyWebRouter {
  final GoRouter router = GoRouter(
    routes: [
      GoRoute(
        path: '/dashboard/admin',
        pageBuilder: (context, state) {
          return MaterialPage(
            child: MultiProvider(
              providers: [
                ChangeNotifierProvider(
                  create: (context) => MenuAppController(),
                ),
              ],
              child: AdminMainScreen(),
            ),
          );
        },
      ),
      GoRoute(
        path: '/dashboard/employer',
        pageBuilder: (context, state) {
          return MaterialPage(  
            child: MultiProvider(
              providers: [
                ChangeNotifierProvider(
                  create: (context) => MenuAppController(),
                ),
              ],
              child: AdmiMainScreen(),
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
