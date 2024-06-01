import 'package:flutter/material.dart';
import 'package:admin/constants/constants.dart';
import 'chart.dart';
import 'storage_info_card.dart';

class  EmployerStorageDetails extends StatelessWidget {
  const  EmployerStorageDetails({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(defaultPadding),
      decoration: BoxDecoration(
        color: secondaryColor,
        borderRadius: const BorderRadius.all(Radius.circular(10)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Storage Details",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(height: defaultPadding),
           EmployerChart(),
           EmployerStorageInfoCard(
            svgSrc: "assets/icons/Documents.svg",
            title: "Employer",
            employers: "10",
            numUser: 132,
          ),
           EmployerStorageInfoCard(
            svgSrc: "assets/icons/media.svg",
            title: "User",
            employers: "15",
            numUser: 13,
          ),
        ],
      ),
    );
  }
}
