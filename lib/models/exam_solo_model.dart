class ExamSoloModel {
  List<Data>? data;
  String? message;
  bool? success;
  int? totalCount;

  ExamSoloModel({this.data, this.message, this.success, this.totalCount});

  ExamSoloModel.fromJson(Map<String, dynamic> json) {
    if (json['data'] != null) {
      data = <Data>[];
      json['data'].forEach((v) {
        data!.add(Data.fromJson(v));
      });
    }
    message = json['message'];
    success = json['success'];
    totalCount = json['totalCount'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    data['message'] = message;
    data['success'] = success;
    data['totalCount'] = totalCount;
    return data;
  }
}

class Data {
  int? examId;
  String? examName;
  int? coins;
  int? rewards;
  int? examTimeInMinutes;
  int? questionsCount;

  Data(
      {this.examId,
      this.examName,
      this.coins,
      this.rewards,
      this.examTimeInMinutes,
      this.questionsCount});

  Data.fromJson(Map<String, dynamic> json) {
    examId = json['examId'];
    examName = json['examName'];
    coins = json['coins'];
    rewards = json['rewards'];
    examTimeInMinutes = json['examTimeInMinutes'];
    questionsCount = json['questionsCount'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['examId'] = examId;
    data['examName'] = examName;
    data['coins'] = coins;
    data['rewards'] = rewards;
    data['examTimeInMinutes'] = examTimeInMinutes;
    data['questionsCount'] = questionsCount;
    return data;
  }
}
