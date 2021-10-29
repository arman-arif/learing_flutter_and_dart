import 'package:flutter/cupertino.dart';

class FollowingModel {
  FollowingModel({
    @required this.username,
    @required this.profileImageUrl,
    @required this.date,
  });

  String username;
  String profileImageUrl;
  String date;
}
