class Job {
  String? userid;
  String? title;
  String? description;
  String? location;
  String? employmentType;
  String? experience;
  String? salary;
  String? applyCriteria;

  Job({
    this.userid,
    this.title,
    this.description,
    this.location,
    this.employmentType,
    this.experience,
    this.salary,
    this.applyCriteria,
  });

  Job.fromJson(Map<String, dynamic> json) {
    userid = json['user_id'];
    title = json['title'];
    description = json['description'];
    location = json['location'];
    employmentType = json['employment_type'];
    experience = json['experience'];
    salary = json['salary'];
    applyCriteria = json['apply_criteria'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['user_id'] = this.userid.toString();
    data['title'] = this.title;
    data['description'] = this.description;
    data['location'] = this.location;
    data['employment_type'] = this.employmentType;
    data['experience'] = this.experience;
    data['salary'] = this.salary;
    data['apply_criteria'] = this.applyCriteria;
    return data;
  }
}
