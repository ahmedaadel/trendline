// ignore_for_file: non_constant_identifier_names

class LoginModel {
  late bool Status;
  late String message;
  late UserData data;

  LoginModel.fromJson(Map<String, dynamic> json) {
    Status = json['status'];
    message = json['message'];
    data = (json['status'] != null ? UserData.fromJson(json['data']) : null)!;
  }
}

class UserData {
  late int id;
  late String name;
  late String email;
  late String phone;
  late String image;
  late int points;
  late int credit;
  late String token;
  UserData.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    email = json['email'];
    phone = json['phone'];
    image = json['image'];
    points = json['points'];
    credit = json['credit'];
    token = json['token'];
  }
}
