import 'package:admin/components/Responsive/responsive.dart';
import 'package:admin/constants/constants.dart';
import 'package:admin/models/data_detail.dart'; 
import 'package:admin/views/Employer/components/file_info_card.dart';
import 'package:admin/views/Employer/dialog/jobdatadialog.dart';
import 'package:flutter/material.dart';

class  EmployerMyFiles extends StatelessWidget {
  const  EmployerMyFiles({
    Key? key,
  }) : super(key: key); 

  void _showJobDataDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) {
        return EmployerJobDataDialog(
          onSubmit: (job) {
          },
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final Size _size = MediaQuery.of(context).size;
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Employer",
              style: Theme.of(context).textTheme.titleMedium,
            ),
            ElevatedButton.icon(
              style: TextButton.styleFrom(
                padding: EdgeInsets.symmetric(
                  horizontal: defaultPadding * 1.5,
                  vertical:
                      defaultPadding / (Responsive.isMobile(context) ? 2 : 1),
                ),
              ),
              onPressed: () => _showJobDataDialog(context),
              icon: Icon(Icons.add),
              label: Text("Post"),
            ),
          ],
        ),
        SizedBox(height: defaultPadding),
        Responsive(
          mobile: FileInfoCardGridView(
            crossAxisCount: _size.width < 650 ? 2 : 4,
            childAspectRatio: _size.width < 650 && _size.width > 350 ? 1.3 : 1,
          ),
          tablet: FileInfoCardGridView(),
          desktop: FileInfoCardGridView(
            childAspectRatio: _size.width < 1400 ? 1.1 : 1.4,
          ),
        ),
      ],
    );
  }
}

class FileInfoCardGridView extends StatelessWidget {
  const FileInfoCardGridView({
    Key? key,
    this.crossAxisCount = 4,
    this.childAspectRatio = 1,
  }) : super(key: key);

  final int crossAxisCount;
  final double childAspectRatio;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: demoMyFiles.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: crossAxisCount,
        crossAxisSpacing: defaultPadding,
        mainAxisSpacing: defaultPadding,
        childAspectRatio: childAspectRatio,
      ),
      itemBuilder: (context, index) => EmployerFileInfoCard(info: demoMyFiles[index]),
    );
  }
}
