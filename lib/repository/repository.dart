import 'package:admin/models/job.dart';
import 'package:admin/models/user.dart';

abstract class RepositoryUser {
  //___user___//
  Future<List<User>> getUser();
  Future<String> deleteUser(User user);
}

abstract class RepositoryJob {
  //____admin____//
  Future<String> adminpostJob(Job job);
  Future<List<Job>> getJobs();
  Future<Job> getJob(String id);
  Future<String> updateJob(String id, Job job);
  Future<void> deleteJob(String id);

 //____employer____//
  Future<String> employerpostJob(Job job);
    Future<List<Job>> employergetjob();
}
