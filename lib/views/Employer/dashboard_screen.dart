import 'package:admin/components/Responsive/responsive.dart';
import 'package:admin/views/Employer/components/header.dart';
import 'package:admin/views/Employer/components/my_fields.dart';
import 'package:flutter/material.dart';

import '../../constants/constants.dart';
import 'components/details_job.dart';
import 'components/storage_details.dart';

class EmployerDashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        primary: false,
        padding: EdgeInsets.all(defaultPadding),
        child: Column(
          children: [
            EmployerHerderDashboard(),
            SizedBox(height: defaultPadding),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: 5,
                  child: Column(
                    children: [
                      EmployerMyFiles(),
                      SizedBox(height: defaultPadding),
                       EmployerRecentFiles(),
                      if (Responsive.isMobile(context))
                        SizedBox(height: defaultPadding),
                      if (Responsive.isMobile(context))  EmployerStorageDetails(),
                    ],
                  ),
                ),
                if (!Responsive.isMobile(context))
                  SizedBox(width: defaultPadding),
                // On Mobile means if the screen is less than 850 we don't want to show it
                if (!Responsive.isMobile(context))
                  Expanded(
                    flex: 2,
                    child:  EmployerStorageDetails(),
                  ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
