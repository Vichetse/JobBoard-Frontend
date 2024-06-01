import 'package:admin/constants/constants.dart';
import 'package:admin/controllers/controller.dart';
import 'package:admin/models/job.dart';
import 'package:admin/repository/job_repository.dart';
import 'package:flutter/material.dart';

class EmployerRecentFiles extends StatelessWidget {
  const EmployerRecentFiles({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var employerController = JobController(JobRepository());

    return FutureBuilder<List<Job>>(
      future: employerController.fatchEmployer(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return Center(child: CircularProgressIndicator());
        } else if (snapshot.hasError) {
          return Center(child: Text('Error: ${snapshot.error}'));
        } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
          return Center(child: Text('No users found.'));
        } else {
          List<Job> employer = snapshot.data!;

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
                  "Job Detail",
                  style: Theme.of(context).textTheme.titleMedium,
                ),
                SizedBox(
                  width: double.infinity,
                  child: DataTable(
                    columnSpacing: defaultPadding,
                    columns: [
                      DataColumn(label: Text('No')),
                      DataColumn(label: Text("Title")),
                      DataColumn(label: Text("Location")),
                      DataColumn(label: Text("Experience")),
                      DataColumn(label: Text("ACTIONS")),
                    ],
                    rows: List.generate(
                      employer.length,
                      (index) => recentFileDataRow(employer[index], index + 1,
                          employerController, context),
                    ),
                  ),
                ),
              ],
            ),
          );
        }
      },
    );
  }
}

DataRow recentFileDataRow(Job employer, int index,
    JobController employerController, BuildContext context) {
  return DataRow(
    cells: [
      DataCell(
        Text(index.toString()),
      ),
      DataCell(Text(employer.title ?? '')),
      DataCell(Text(employer.location ?? '')),
      DataCell(Text(employer.experience ?? '')),
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
              onPressed: () async {
                // Add delete action here
              },
            ),
          ],
        ),
      ),
    ],
  );
}
