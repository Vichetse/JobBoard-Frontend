import 'dart:convert';

import 'package:admin/models/job.dart';
import 'package:admin/repository/repository.dart';
import 'package:admin/services/api_service.dart';

import 'package:admin/services/service.dart';

class JobRepository implements RepositoryJob {
  // ---------------------------//
  // -----------Admin-----------//
  // ---------------------------//
  @override
  Future<String> adminpostJob(Job job) async {
    var token = await AuthManager.getToken();
    var url = Uri.parse('$baseURL/admin_job_category');
    var response = await client.post(
      url,
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer $token',
      },
      body: jsonEncode(job.toJson()),
    );

    if (response.statusCode == 200) {
      return response.body;
    } else {
      throw Exception('Failed to post job: ${response.statusCode}');
    }
  }

  @override
  Future<void> deleteJob(String id) async {
    var token = await AuthManager.getToken();
    var url = Uri.parse('$baseURL/admin_job_category/$id');
    var response = await client.delete(
      url,
      headers: {
        'Authorization': 'Bearer $token',
      },
    );
    if (response.statusCode != 204) {
      throw Exception('Failed to delete job: ${response.statusCode}');
    }
  }

  @override
  Future<Job> getJob(String id) async {
    var token = await AuthManager.getToken();
    var url = Uri.parse('$baseURL/admin_job_category/$id');
    var response = await client.get(
      url,
      headers: {
        'Authorization': 'Bearer $token',
      },
    );
    if (response.statusCode == 200) {
      return Job.fromJson(jsonDecode(response.body));
    } else {
      throw Exception('Failed to load job: ${response.statusCode}');
    }
  }

  @override
  Future<List<Job>> getJobs() async {
    var token = await AuthManager.getToken();
    var url = Uri.parse('$baseURL/admin_job_category');
    var response = await client.get(
      url,
      headers: {
        'Authorization': 'Bearer $token',
      },
    );
    if (response.statusCode == 200) {
      List<dynamic> data = jsonDecode(response.body);
      return data.map((jobData) => Job.fromJson(jobData)).toList();
    } else {
      throw Exception('Failed to load jobs: ${response.statusCode}');
    }
  }

  @override
  Future<String> updateJob(String id, Job job) async {
    var token = await AuthManager.getToken();
    var url = Uri.parse('$baseURL/admin_job_category/$id');
    var response = await client.put(
      url,
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer $token',
      },
      body: jsonEncode(job.toJson()),
    );
    if (response.statusCode == 200) {
      return response.body;
    } else {
      throw Exception('Failed to update job: ${response.statusCode}');
    }
  }

  // ---------------------------//
  // ----------Employer---------//
  // ---------------------------//

  Future<String> employerpostJob(Job job) async {
    var token = await AuthManager.getToken();
    var url = Uri.parse('$baseURL/employer_job_category');
    var response = await client.post(
      url,
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer $token',
      },
      body: jsonEncode(job.toJson()),
    );

    if (response.statusCode == 200) {
      return response.body;
    } else {
      throw Exception('Failed to post job: ${response.statusCode}');
    }
  }

  @override
  Future<List<Job>> employergetjob() async {
    var token = await AuthManager.getToken();
    var url = Uri.parse('$baseURL/employer_job_category');
    var response = await client.get(
      url,
      headers: {
        'Authorization': 'Bearer $token',
      },
    );
    if (response.statusCode == 200) {
      final data = json.decode(response.body);
      if (data.containsKey('job') && data['job'] is List) {
        return (data['job'] as List)
            .map((json) => Job.fromJson(json))
            .toList();
      } else {
        throw Exception('Failed to load job: Invalid data format');
      }
    } else {
      throw Exception('Failed to load job');
    }
  }
}
