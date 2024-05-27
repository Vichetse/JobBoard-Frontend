import 'package:flutter/material.dart';

class HeaderMobile extends StatelessWidget {
  const HeaderMobile({super.key, required this.onMenuTab});


  final VoidCallback onMenuTab;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(right: 50.0, left: 50.0),
      height: 40.0,
      width: double.maxFinite,
       color: const Color.fromARGB(247, 247, 248, 255),
      child: Row(
        children: [
          IconButton(
            onPressed: onMenuTab,
            icon: const Icon(
              Icons.menu,
            ),
          ),
          const Spacer(),
          const Row(
            children: [
              Icon(Icons.phone),
              SizedBox(width: 10),
              Text("012 573 911"),
            ],
          ),
          const SizedBox(width: 20),
          const Row(
            children: [
              Icon(Icons.language),
              SizedBox(width: 10),
              Text("English"),
            ],
          )
        ],
      ),
    );
  }
}
