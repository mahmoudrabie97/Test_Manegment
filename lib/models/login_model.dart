


class LoginModel {
  Data? data;
  String? message;
  bool? success;
  Null? totalCount;

  LoginModel({this.data, this.message, this.success, this.totalCount});

  LoginModel.fromJson(Map<String, dynamic> json) {
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
  Null? username;
  int? roleId;
  Null? roleName;
  String? accessToken;
  String? refreshToken;
  Null? email;
  bool? canCreate;
  bool? canApprove;
  bool? canDeploy;

  Data(
      {this.username,
        this.roleId,
        this.roleName,
        this.accessToken,
        this.refreshToken,
        this.email,
        this.canCreate,
        this.canApprove,
        this.canDeploy});

  Data.fromJson(Map<String, dynamic> json) {
    username = json['username'];
    roleId = json['roleId'];
    roleName = json['roleName'];
    accessToken = json['accessToken'];
    refreshToken = json['refreshToken'];
    email = json['email'];
    canCreate = json['canCreate'];
    canApprove = json['canApprove'];
    canDeploy = json['canDeploy'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['username'] = this.username;
    data['roleId'] = this.roleId;
    data['roleName'] = this.roleName;
    data['accessToken'] = this.accessToken;
    data['refreshToken'] = this.refreshToken;
    data['email'] = this.email;
    data['canCreate'] = this.canCreate;
    data['canApprove'] = this.canApprove;
    data['canDeploy'] = this.canDeploy;
    return data;
  }
}