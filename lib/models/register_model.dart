class RegisterModel {
  Data? data;
  String? message;
  bool? success;
  dynamic totalCount;

  RegisterModel({this.data, this.message, this.success, this.totalCount});

  RegisterModel.fromJson(Map<String, dynamic> json) {
    data = json['data'] != null ? new Data.fromJson(json['data']) : null;
    message = json['message'];
    success = json['success'];
    totalCount = json['totalCount'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (this.data != null) {
      data['data'] = this.data!.toJson();
    }
    data['message'] = message;
    data['success'] = success;
    data['totalCount'] = totalCount;
    return data;
  }
}

class Data {
  int? id;
  String? name;
  String? nationalId;
  String? phoneNumber;
  String? email;
  dynamic userName;
  int? roleID;
  dynamic roleName;
  dynamic teamID;
  dynamic teamName;
  bool? isEnabled;
  int? gender;
  String? genderName;
  bool? canCreate;
  bool? canApprove;
  bool? canDeploy;

  Data(
      {this.id,
      this.name,
      this.nationalId,
      this.phoneNumber,
      this.email,
      this.userName,
      this.roleID,
      this.roleName,
      this.teamID,
      this.teamName,
      this.isEnabled,
      this.gender,
      this.genderName,
      this.canCreate,
      this.canApprove,
      this.canDeploy});

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    nationalId = json['nationalId'];
    phoneNumber = json['phoneNumber'];
    email = json['email'];
    userName = json['userName'];
    roleID = json['roleID'];
    roleName = json['roleName'];
    teamID = json['teamID'];
    teamName = json['teamName'];
    isEnabled = json['isEnabled'];
    gender = json['gender'];
    genderName = json['genderName'];
    canCreate = json['canCreate'];
    canApprove = json['canApprove'];
    canDeploy = json['canDeploy'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['nationalId'] = nationalId;
    data['phoneNumber'] = phoneNumber;
    data['email'] = email;
    data['userName'] = userName;
    data['roleID'] = roleID;
    data['roleName'] = roleName;
    data['teamID'] = teamID;
    data['teamName'] = teamName;
    data['isEnabled'] = isEnabled;
    data['gender'] = gender;
    data['genderName'] = genderName;
    data['canCreate'] = canCreate;
    data['canApprove'] = canApprove;
    data['canDeploy'] = canDeploy;
    return data;
  }
}
