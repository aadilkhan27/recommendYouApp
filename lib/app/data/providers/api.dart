import 'dart:convert';

import 'package:recommend_you/app/core/values/strings.dart';
import 'package:recommend_you/app/data/model/app_error.dart';
import 'package:recommend_you/app/data/model/sign_in_response.dart';
import 'package:recommend_you/app/data/providers/logging_interceptor.dart';
import 'package:get/get.dart';
import 'package:http_interceptor/http_interceptor.dart';

const baseUrl = 'http://dev.cleverpick11.com/api/v1';

class MyApi extends GetConnect {
  Future<dynamic> login(mobile) async {
    final http = InterceptedHttp.build(interceptors: [LoggingInterceptor()]);
    final response = await http.post(Uri.parse('$baseUrl/Account/request-otp/$mobile'), params: {});
    if (response.statusCode == 200) {
      return SignInResponse.fromJson(json.decode(response.body));
    } else if (response.statusCode == 500) {
      return AppError(errors: errors);
    } else {
      return AppError(errors: response.body);
    }
  }
}
