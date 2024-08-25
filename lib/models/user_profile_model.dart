



class UserProfileModel {
  Data? data;
  String? message;
  bool? success;
  Null? totalCount;

  UserProfileModel({this.data, this.message, this.success, this.totalCount});

  UserProfileModel.fromJson(Map<String, dynamic> json) {
    data = json['data'] != null ? new Data.fromJson(json['data']) : null;
    message = json['message'];
    success = json['success'];
    totalCount = json['totalCount'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.data != null) {
      data['data'] = this.data!.toJson();
    }
    data['message'] = this.message;
    data['success'] = this.success;
    data['totalCount'] = this.totalCount;
    return data;
  }
}

class Data {
  String? nationalId;
  String? name;
  String? email;
  String? phoneNumber;
  int? gender;
  String? genderName;
  int? balance;
  int? roleId;
  Null? student;
  Null? parent;
  Null? trainer;

  Data(
      {this.nationalId,
        this.name,
        this.email,
        this.phoneNumber,
        this.gender,
        this.genderName,
        this.balance,
        this.roleId,
        this.student,
        this.parent,
        this.trainer});

  Data.fromJson(Map<String, dynamic> json) {
    nationalId = json['nationalId'];
    name = json['name'];
    email = json['email'];
    phoneNumber = json['phoneNumber'];
    gender = json['gender'];
    genderName = json['genderName'];
    balance = json['balance'];
    roleId = json['roleId'];
    student = json['student'];
    parent = json['parent'];
    trainer = json['trainer'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['nationalId'] = this.nationalId;
    data['name'] = this.name;
    data['email'] = this.email;
    data['phoneNumber'] = this.phoneNumber;
    data['gender'] = this.gender;
    data['genderName'] = this.genderName;
    data['balance'] = this.balance;
    data['roleId'] = this.roleId;
    data['student'] = this.student;
    data['parent'] = this.parent;
    data['trainer'] = this.trainer;
    return data;
  }
}