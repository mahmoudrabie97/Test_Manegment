


class QuestionCorrectAnswerModel {
  Data? data;
  String? message;
  bool? success;
  int? totalCount;

  QuestionCorrectAnswerModel(
      {this.data, this.message, this.success, this.totalCount});

  QuestionCorrectAnswerModel.fromJson(Map<String, dynamic> json) {
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
  int? id;
  String? name;
  String? answerExplanation;

  Data({this.id, this.name, this.answerExplanation});

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    answerExplanation = json['answerExplanation'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['answerExplanation'] = this.answerExplanation;
    return data;
  }
}