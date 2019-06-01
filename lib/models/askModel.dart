class AskModel {
  String ask;
  String createdAt;
  String userId;
  String userName;
  String userPhoto;

  AskModel(
      {this.ask, this.createdAt, this.userId, this.userName, this.userPhoto});

  AskModel.fromJson(Map<String, dynamic> json) {
    ask = json['ask'];
    createdAt = json['created_at'];
    userId = json['userId'];
    userName = json['userName'];
    userPhoto = json['userPhoto'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['ask'] = this.ask;
    data['created_at'] = this.createdAt;
    data['userId'] = this.userId;
    data['userName'] = this.userName;
    data['userPhoto'] = this.userPhoto;
    return data;
  }
}