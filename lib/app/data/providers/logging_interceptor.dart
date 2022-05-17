import 'package:recommend_you/app/data/storage/storage.dart';
import 'package:flutter/widgets.dart';
import 'package:http_interceptor/http/interceptor_contract.dart';
import 'package:http_interceptor/models/request_data.dart';
import 'package:http_interceptor/models/response_data.dart';

class LoggingInterceptor implements InterceptorContract {
  @override
  Future<RequestData> interceptRequest({required RequestData data}) async {
    try {
      data.headers["Content-Type"] = "application/json";
      data.headers["Authorization"] = Storage.getValue(Storage.TOKEN);
    } catch (e) {
      debugPrint(e.toString(), wrapWidth: 1024);
    }
    return data;
  }

  @override
  Future<ResponseData> interceptResponse({required ResponseData data}) async {
    debugPrint(data.toString(), wrapWidth: 1024);
    return data;
  }
}
