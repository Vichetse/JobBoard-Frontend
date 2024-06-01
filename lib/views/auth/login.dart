import 'dart:convert';

import 'package:admin/controllers/api/auth.dart';
import 'package:flutter/material.dart';
import 'package:admin/Routes/route_path.dart';
import 'package:admin/constants/constants.dart';
import 'package:admin/components/Responsive/responsive.dart';
import 'package:go_router/go_router.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  void _login() async {
    try {
      var data = {
        'email': emailController.text,
        'password': passwordController.text,
      };
      var response = await Auth().authentication(data, '/auth/login');
      final body = jsonDecode(response.body);
      if (body['status'] == 200) {
        SharedPreferences preferences = await SharedPreferences.getInstance();
        await preferences.setString('user_id', body['user']['id'] ?? '');
        await preferences.setString('name', body['user']['name'] ?? '');
        await preferences.setString('email', body['user']['email'] ?? '');
        await preferences.setString('role', body['user']['role'] ?? '');
        await preferences.setString('token', body['access_token'] ?? '');
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(body['message']),
          ),
        );
        String role = preferences.getString('role') ?? '';

        if (role == 'admin') {
          context.go(RoutePath.dashboard);
        } else if (role == 'employer') {
          context.go(RoutePath.employers);
        } else if (role == 'user') {
          context.go(RoutePath.home);
        } else {
          print("Unexpected role. Please contact support.");
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text('Unexpected role. Please contact support.'),
            ),
          );
        }
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Something went wrong. Please try again.'),
          ),
        );
      }
    } catch (e) {
      print('Error: $e');
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('An error occurred. Please try again later.'),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: AppColors.backColor,
      body: SizedBox(
        height: height,
        width: width,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Responsive.isMobile(context)
                ? const SizedBox()
                : Expanded(
                    child: Container(
                      height: height,
                      color: AppColors.mainBlueColor,
                      child: Center(
                        child: Text(
                          'Welcome to JobBoard',
                          style: ralewayStyle.copyWith(
                            fontSize: 48.0,
                            color: AppColors.whiteColor,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                      ),
                    ),
                  ),
            Expanded(
              child: Container(
                height: height,
                margin: EdgeInsets.symmetric(
                  horizontal: Responsive.isMobile(context)
                      ? height * 0.032
                      : height * 0.12,
                ),
                color: AppColors.backColor,
                child: SingleChildScrollView(
                  padding: const EdgeInsets.only(bottom: 40.0),
                  child: Form(
                    key: _formKey,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(height: height * 0.2),
                        RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: 'Let’s',
                                style: ralewayStyle.copyWith(
                                  fontSize: 25.0,
                                  color: AppColors.blueDarkColor,
                                  fontWeight: FontWeight.normal,
                                ),
                              ),
                              TextSpan(
                                text: ' Sign In 👇',
                                style: ralewayStyle.copyWith(
                                  fontWeight: FontWeight.w800,
                                  color: AppColors.blueDarkColor,
                                  fontSize: 25.0,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: height * 0.02),
                        Text(
                          'Hey, Enter your details to get sign in \nto your account.',
                          style: ralewayStyle.copyWith(
                            fontSize: 12.0,
                            fontWeight: FontWeight.w400,
                            color: AppColors.textColor,
                          ),
                        ),
                        SizedBox(height: height * 0.064),
                        Padding(
                          padding: const EdgeInsets.only(left: 16.0),
                          child: Text(
                            'Email',
                            style: ralewayStyle.copyWith(
                              fontSize: 12.0,
                              color: AppColors.blueDarkColor,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                        const SizedBox(height: 6.0),
                        Container(
                          height: 50.0,
                          width: width,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16.0),
                            color: AppColors.whiteColor,
                          ),
                          child: TextFormField(
                            style: ralewayStyle.copyWith(
                              fontWeight: FontWeight.w400,
                              color: AppColors.blueDarkColor,
                              fontSize: 12.0,
                            ),
                            controller: emailController,
                            keyboardType: TextInputType.emailAddress,
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please enter your email';
                              }
                              return null;
                            },
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              prefixIcon: IconButton(
                                onPressed: () {},
                                icon: Image.asset(AppIcons.emailIcon),
                              ),
                              contentPadding: const EdgeInsets.only(top: 16.0),
                              hintText: 'Enter Email',
                              hintStyle: ralewayStyle.copyWith(
                                fontWeight: FontWeight.w400,
                                color: AppColors.blueDarkColor.withOpacity(0.5),
                                fontSize: 12.0,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: height * 0.014),
                        Padding(
                          padding: const EdgeInsets.only(left: 16.0),
                          child: Text(
                            'Password',
                            style: ralewayStyle.copyWith(
                              fontSize: 12.0,
                              color: AppColors.blueDarkColor,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                        const SizedBox(height: 6.0),
                        Container(
                          height: 50.0,
                          width: width,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16.0),
                            color: AppColors.whiteColor,
                          ),
                          child: TextFormField(
                            style: ralewayStyle.copyWith(
                              fontWeight: FontWeight.w400,
                              color: AppColors.blueDarkColor,
                              fontSize: 12.0,
                            ),
                            controller: passwordController,
                            obscureText: true,
                            keyboardType: TextInputType.text,
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please enter your password';
                              }
                              return null;
                            },
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              suffixIcon: IconButton(
                                onPressed: () {},
                                icon: Image.asset(AppIcons.eyeIcon),
                              ),
                              prefixIcon: IconButton(
                                onPressed: () {},
                                icon: Image.asset(AppIcons.lockIcon),
                              ),
                              contentPadding: const EdgeInsets.only(top: 16.0),
                              hintText: 'Enter Password',
                              hintStyle: ralewayStyle.copyWith(
                                fontWeight: FontWeight.w400,
                                color: AppColors.blueDarkColor.withOpacity(0.5),
                                fontSize: 12.0,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: height * 0.03),
                        Align(
                          alignment: Alignment.centerRight,
                          child: TextButton(
                            onPressed: () {},
                            child: Text(
                              'Forgot Password?',
                              style: ralewayStyle.copyWith(
                                fontSize: 12.0,
                                color: AppColors.mainBlueColor,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: height * 0.05),
                        Container(
                          child: Row(
                            children: [
                              SizedBox(
                                width: screenWidth > 800 ? 200.0 : 150.0,
                                height: screenWidth > 800 ? 60.0 : 50.0,
                                child: ElevatedButton(
                                  onPressed: () {
                                    if (_formKey.currentState!.validate()) {
                                      ScaffoldMessenger.of(context)
                                          .showSnackBar(
                                        SnackBar(
                                          content: Text('Processing Data'),
                                        ),
                                      );
                                      _login();
                                    }
                                  },
                                  style: ElevatedButton.styleFrom(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20.0),
                                    ),
                                    foregroundColor: Colors.white,
                                    backgroundColor:
                                        const Color.fromARGB(255, 42, 42, 255),
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 20.0),
                                  ),
                                  child: const Text('Sign In'),
                                ),
                              ),
                              const SizedBox(width: 10.0),
                              SizedBox(
                                width: screenWidth > 800 ? 200.0 : 150.0,
                                height: screenWidth > 800 ? 60.0 : 50.0,
                                child: ElevatedButton(
                                  onPressed: () {
                                    context.go(RoutePath.register);
                                  },
                                  style: ElevatedButton.styleFrom(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20.0),
                                    ),
                                    foregroundColor: Colors.white,
                                    backgroundColor:
                                        const Color.fromARGB(255, 42, 42, 255),
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 20.0),
                                  ),
                                  child: const Text('Create New Account'),
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
