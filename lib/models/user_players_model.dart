class UserPlayersModel {
  List<Data>? data;
  String? message;
  bool? success;
  int? totalCount;

  UserPlayersModel({this.data, this.message, this.success, this.totalCount});

  UserPlayersModel.fromJson(Map<String, dynamic> json) {
    if (json['data'] != null) {
      data = <Data>[];
      json['data'].forEach((v) {
        data!.add(new Data.fromJson(v));
      });
    }
    message = json['message'];
    success = json['success'];
    totalCount = json['totalCount'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    data['message'] = this.message;
    data['success'] = this.success;
    data['totalCount'] = this.totalCount;
    return data;
  }
}

class Data {
  int? userId;
  String? name;
  String? nationalId;
  int? gender;
  String? profileImage;

  Data(
      {this.userId,
        this.name,
        this.nationalId,
        this.gender,
        this.profileImage});

  Data.fromJson(Map<String, dynamic> json) {
    userId = json['userId'];
    name = json['name'];
    nationalId = json['nationalId'];
    gender = json['gender'];
    profileImage = json['profileImage'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['userId'] = this.userId;
    data['name'] = this.name;
    data['nationalId'] = this.nationalId;
    data['gender'] = this.gender;
    data['profileImage'] = this.profileImage;
    return data;
  }
}