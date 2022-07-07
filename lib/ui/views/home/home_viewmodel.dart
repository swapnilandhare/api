import 'package:api/api/api_client.dart';
import 'package:api/model/data.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class HomeViewModel extends BaseViewModel {
  String _name = "";
  String get name => _name;
  Future<void> getData() async {
    final client = ApiClient(Dio(BaseOptions(contentType: "application/json")));
    ResponseData? posts = await client.getUsers();
    debugPrint("responce = $posts");
    // _name = posts.;
  }
}
