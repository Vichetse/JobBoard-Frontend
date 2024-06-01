import 'package:admin/Components/Header/header.dart';
import 'package:admin/components/Responsive/Desktop/header_desktop.dart';
import 'package:admin/constants/constants.dart';
import 'package:flutter/material.dart';

class FineJob extends StatelessWidget {
  const FineJob({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:kPrimaryHomepage,
      body: ListView(
        children: [
          HeaderDesktop(),
          Header(),

          
        ],
      ),
    );
  }
}
