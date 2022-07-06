import 'package:api/api/api_client.dart';
import 'package:api/model/data.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class HomeViewModel extends BaseViewModel {
  void getData() {
    final client = ApiClient(Dio(BaseOptions(contentType: "application/json")));
    Future<ResponseData> posts = client.getUsers();
    debugPrint("responce = $posts");
  }
}
