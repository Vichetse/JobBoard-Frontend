import 'package:admin/controllers/controller.dart';
import 'package:admin/models/job.dart';
import 'package:admin/repository/job_repository.dart';
import 'package:admin/services/api_service.dart';
import 'package:flutter/material.dart';

class  EmployerJobDataDialog extends StatefulWidget {
  final Function(Job) onSubmit;

   EmployerJobDataDialog({required this.onSubmit});

  @override
  _JobDataDialogState createState() => _JobDataDialogState();
}

class _JobDataDialogState extends State< EmployerJobDataDialog> {
  final _formKey = GlobalKey<FormState>();
  final _titleController = TextEditingController();
  final _descriptionController = TextEditingController();
  final _locationController = TextEditingController();
  final _employmentTypeController = TextEditingController();
  final _experienceController = TextEditingController();
  final _salaryController = TextEditingController();
  final _applyCriteriaController = TextEditingController();

  var _jobController = JobController(JobRepository());

  @override
  void dispose() {
    _titleController.dispose();
    _descriptionController.dispose();
    _locationController.dispose();
    _employmentTypeController.dispose();
    _experienceController.dispose();
    _salaryController.dispose();
    _applyCriteriaController.dispose();
    super.dispose();
  }

 void _postJob() async {
  try {
    var user_id = await AuthManager.getUserId();
    print(user_id);
    Job job = Job(
      userid: user_id,
      title: _titleController.text,
      description: _descriptionController.text,
      location: _locationController.text,
      employmentType: _employmentTypeController.text,
      experience: _experienceController.text,
      salary: _salaryController.text,
      applyCriteria: _applyCriteriaController.text,
    );
     _jobController.employerpostJob(job);
  
  } catch (e) {
    print("Error posting job: $e");
  }
}


  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text('Enter Job Data'),
      content: Form(
        key: _formKey,
        child: SingleChildScrollView(
          child: Column(
            children: [
              _buildTextField(_titleController, 'Title'),
              _buildTextField(_descriptionController, 'Description'),
              _buildTextField(_locationController, 'Location'),
              _buildTextField(_employmentTypeController, 'Employment Type'),
              _buildTextField(_experienceController, 'Experience'),
              _buildTextField(_salaryController, 'Salary'),
              _buildTextField(_applyCriteriaController, 'Apply Criteria'),
            ],
          ),
        ),
      ),
      actions: [
        TextButton(
          onPressed: () => Navigator.of(context).pop(),
          child: Text('Cancel'),
        ),
        ElevatedButton(
          onPressed: () {
            if (_formKey.currentState!.validate()) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text('Processing Data'),
                ),
              );
              _postJob();
            }
          },
          child: Text('Submit'),
        ),
      ],
    );
  }

  Widget _buildTextField(TextEditingController controller, String label) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 8.0),
      child: TextFormField(
        controller: controller,
        decoration: InputDecoration(labelText: label),
        validator: (value) {
          if (value == null || value.isEmpty) {
            return 'Please enter $label';
          }
          return null;
        },
      ),
    );
  }
}
