class GetCompatopleinvitationModl {
  List<Data>? data;
  String? message;
  bool? success;
  int? totalCount;

  GetCompatopleinvitationModl(
      {this.data, this.message, this.success, this.totalCount});

  GetCompatopleinvitationModl.fromJson(Map<String, dynamic> json) {
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
  int? id;
  int? senderId;
  int? competitorId;
  int? examId;
  String? text;
  int? status;

  Data(
      {this.id,
      this.senderId,
      this.competitorId,
      this.examId,
      this.text,
      this.status});

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    senderId = json['senderId'];
    competitorId = json['competitorId'];
    examId = json['examId'];
    text = json['text'];
    status = json['status'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['senderId'] = this.senderId;
    data['competitorId'] = this.competitorId;
    data['examId'] = this.examId;
    data['text'] = this.text;
    data['status'] = this.status;
    return data;
  }
}
