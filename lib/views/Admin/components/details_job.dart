import 'package:admin/constants/constants.dart';
import 'package:admin/controllers/controller.dart';

import 'package:admin/models/user.dart';
import 'package:admin/repository/user_repository.dart';
import 'package:flutter/material.dart';

class AdminRecentFiles extends StatelessWidget {
  const AdminRecentFiles({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var userController = UserController(UserRepository());

    return FutureBuilder<List<User>>(
      future: userController.fatchUser(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return Center(child: CircularProgressIndicator());
        } else if (snapshot.hasError) {
          return Center(child: Text('Error: ${snapshot.error}'));
        } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
          return Center(child: Text('No users found.'));
        } else {
          List<User> users = snapshot.data!;

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
                    columns: [
                      DataColumn(label: Text('No')),
                      DataColumn(label: Text("Username")),
                      DataColumn(label: Text("Role")),
                      DataColumn(label: Text("ACTIONS")),
                    ],
                    rows: List.generate(
                      users.length,
                      (index) => recentFileDataRow(
                          users[index], index +1, userController, context),
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

DataRow recentFileDataRow(User users, int index, UserController userController,
    BuildContext context) {
  return DataRow(
    cells: [
      DataCell(
        Text(index.toString()),
      ),
      DataCell(
        Text(users.name ?? ''),
      ),
      DataCell(
        Text(users.role ?? ''),
      ),
      DataCell(
        Row(
          children: [
            // Uncomment and implement edit functionality
            // IconButton(
            //   icon: Icon(Icons.edit),
            //   onPressed: () {
            //     // Add edit action here
            //   },
            // ),
            IconButton(
              icon: Icon(Icons.delete),
              onPressed: () async {
                try {
                  await userController.deleteUser(users);
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text('User deleted successfully'),
                    ),
                  );
                  // Refresh the UI after deletion
                  // This assumes you have a StatefulWidget to refresh the state
                  // If RecentFiles is a StatefulWidget, call setState here
                } catch (e) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text('Failed to delete user: $e'),
                    ),
                  );
                }
              },
            ),
          ],
        ),
      ),
    ],
  );
}
