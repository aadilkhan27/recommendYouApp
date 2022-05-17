import 'package:recommend_you/app/data/model/app_error.dart';

abstract class VerifyError {
  static verify(data) {
    if (data.runtimeType == AppError) {
      return true;
    } else
      return false;
  }
}
