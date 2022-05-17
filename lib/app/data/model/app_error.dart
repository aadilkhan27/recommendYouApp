import 'dart:convert';

AppError appErrorFromJson(String str) => AppError.fromJson(json.decode(str));

String appErrorToJson(AppError data) => json.encode(data.toJson());

class AppError {
  String? errors;

  AppError({this.errors});

  factory AppError.fromJson(Map<String, dynamic> json) => AppError(errors: json["errors"]);

  Map<String, dynamic> toJson() => {"errors": errors};
}
