
class CancelInvitationModel {
  String? data;
  String? message;
  bool? success;
  Null? totalCount;

  CancelInvitationModel(
      {this.data, this.message, this.success, this.totalCount});

  CancelInvitationModel.fromJson(Map<String, dynamic> json) {
    data = json['data'];
    message = json['message'];
    success = json['success'];
    totalCount = json['totalCount'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['data'] = this.data;
    data['message'] = this.message;
    data['success'] = this.success;
    data['totalCount'] = this.totalCount;
    return data;
  }
}