import 'package:sample/utils/enemurations.dart';

class UserModel {
  int id;
  String name;
  String designation;

  UserModel({this.id, this.name, this.designation});
}

class DataModel {
  int userId;
  DataType type;
  String name;
  String description;
  String image;

  DataModel({this.userId, this.type, this.name, this.description, this.image});
}

class AboutUserModel {
  String image;
  String name;
  String from;
  List<String> points;

  AboutUserModel({this.image, this.name, this.from, this.points});
}

class SocialModel {
  String name;
  String image;
  String profileLink;

  SocialModel({this.name, this.image, this.profileLink});
}
