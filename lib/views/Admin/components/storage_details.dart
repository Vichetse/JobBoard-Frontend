import 'package:flutter/material.dart';
import 'package:admin/constants/constants.dart';
import 'chart.dart';
import 'storage_info_card.dart';

class StorageDetails extends StatelessWidget {
  const StorageDetails({
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
          AdminChart(),
          StorageInfoCard(
            svgSrc: "assets/icons/Documents.svg",
            title: "Employer",
            employers: "10",
            numUser: 132,
          ),
          StorageInfoCard(
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
