import 'package:admin/constants/constants.dart';
import 'package:admin/models/data_job.dart';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class RecentFiles extends StatelessWidget {
  const RecentFiles({
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
            "Recent Users",
            style: Theme.of(context).textTheme.titleMedium,
          ),
          SizedBox(
            width: double.infinity,
            child: DataTable(
              columnSpacing: defaultPadding,
              // minWidth: 600,
              columns: [
                DataColumn(
                  label: Text("No"),
                ),
                DataColumn(
                  label: Text("Username"),
                ),
                DataColumn(
                  label: Text("Job "),
                ),
                DataColumn(
                  label: Text("ACTIONS"),
                ),
              ],
              rows: List.generate(
                demoRecentFiles.length,
                (index) => recentFileDataRow(demoRecentFiles[index], index + 1),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

DataRow recentFileDataRow(RecentFile fileInfo, int index) {
  return DataRow(
    cells: [
      DataCell(
        Text((index).toString()),
      ),
      DataCell(
        Row(
          children: [
            SvgPicture.asset(
              fileInfo.icon!,
              height: 30,
              width: 30,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
              child: Text(fileInfo.title!),
            ),
          ],
        ),
      ),
      DataCell(Text(fileInfo.createAt!)),
      DataCell(
        Row(
          children: [
            IconButton(
              icon: Icon(Icons.edit),
              onPressed: () {
                // Add edit action here
              },
            ),
            IconButton(
              icon: Icon(Icons.delete),
              onPressed: () {
                // Add delete action here
              },
            ),
          ],
        ),
      ),
    ],
  );
}
