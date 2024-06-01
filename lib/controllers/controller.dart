import 'package:admin/models/job.dart';
import 'package:admin/models/user.dart';
import 'package:admin/repository/repository.dart';

class UserController {
  final RepositoryUser _repository;

  UserController(this._repository);

  Future<List<User>> fatchUser() async {
    return await _repository.getUser();
  }

  Future<String> deleteUser(User user) async {
    return await _repository.deleteUser(user);
  }
}

class JobController {
  final RepositoryJob _repository;

  JobController(this._repository);
  // ---------------------------//
  // -----------Admin-----------//
  // ---------------------------//

  Future<String> adminpostJob(Job job) async {
    return await _repository.adminpostJob(job);
  }

  // ---------------------------//
  // ----------Employer---------//
  // ---------------------------//
  Future<String> employerpostJob(Job job) async {
    return await _repository.employerpostJob(job);
  }
   Future<List<Job>> fatchEmployer() async {
    return await _repository.employergetjob();
  }

}
