class GetInvitationModel {
  List<InvitationData>? invatationdata;
  String? message;
  bool? success;
  int? totalCount;

  GetInvitationModel(
      {this.invatationdata, this.message, this.success, this.totalCount});

  GetInvitationModel.fromJson(Map<String, dynamic> json) {
    if (json['data'] != null) {
      invatationdata = <InvitationData>[];
      json['data'].forEach((v) {
        invatationdata!.add(new InvitationData.fromJson(v));
      });
    }
    message = json['message'];
    success = json['success'];
    totalCount = json['totalCount'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.invatationdata != null) {
      data['data'] = this.invatationdata!.map((v) => v.toJson()).toList();
    }
    data['message'] = message;
    data['success'] = success;
    data['totalCount'] = totalCount;
    return data;
  }
}

class InvitationData {
  int? id;
  String? name;
  String? email;
  int? gender;

  InvitationData({this.id, this.name, this.email, this.gender});

  InvitationData.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    email = json['email'];
    gender = json['gender'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = id;
    data['name'] = name;
    data['email'] = email;
    data['gender'] = gender;
    return data;
  }
}
