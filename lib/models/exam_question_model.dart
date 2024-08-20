class ExamQuestionModel {
  List<Data>? data;
  String? message;
  bool? success;
  int? totalCount;

  ExamQuestionModel({this.data, this.message, this.success, this.totalCount});

  ExamQuestionModel.fromJson(Map<String, dynamic> json) {
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
  int? questionId;
  String? title;
  int? questionType;
  String? essay;
  String? imageOrVideoFile;
  String? url;
  List<Answers>? answers;

  Data(
      {this.questionId,
      this.title,
      this.questionType,
      this.essay,
      this.imageOrVideoFile,
      this.url,
      this.answers});

  Data.fromJson(Map<String, dynamic> json) {
    questionId = json['questionId'];
    title = json['title'];
    questionType = json['questionType'];
    essay = json['essay'];
    imageOrVideoFile = json['imageOrVideoFile'];
    url = json['url'];
    if (json['answers'] != null) {
      answers = <Answers>[];
      json['answers'].forEach((v) {
        answers!.add(new Answers.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['questionId'] = this.questionId;
    data['title'] = this.title;
    data['questionType'] = this.questionType;
    data['essay'] = this.essay;
    data['imageOrVideoFile'] = this.imageOrVideoFile;
    data['url'] = this.url;
    if (this.answers != null) {
      data['answers'] = this.answers!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Answers {
  int? id;
  String? name;
  String? answerExplanation;

  Answers({this.id, this.name, this.answerExplanation});

  Answers.fromJson(Map<String, dynamic> json) {
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
