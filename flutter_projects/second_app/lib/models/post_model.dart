import 'package:flutter/material.dart';

class PostModel {
  PostModel({
    @required this.username,
    @required this.caption,
    @required this.address,
    @required this.imageUrl,
    @required this.userImageUrl,
    @required this.likes,
  });

  String imageUrl;
  String address;
  String caption;
  String username;
  String userImageUrl;
  int likes = 0;
}
