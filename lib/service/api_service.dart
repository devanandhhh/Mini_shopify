import 'dart:convert';
import 'dart:developer';

import 'package:mini_shop/model/model.dart';
import 'package:http/http.dart' as http;

class ApiService {
  Future<List<NotificationModel>> getNotification() async {
    try {
      String baseurl ='https://raw.githubusercontent.com/shabeersha/test-api/main/test-notifications.json';
      final response = await http.get(Uri.parse(baseurl));
      if (response.statusCode == 200) {
        final data = jsonDecode(response.body);
        List<NotificationModel> result = [];
        if (data["data"] != null) {
          for (var item in data['data']) {
            result.add(NotificationModel.fromMap(item));
          }
        }
        return result;
      } else {
        log('something wrong');
        return [];
      }
    } catch (e) {
      log('Catch Errror $e');
      return [];
    }
  }
}
