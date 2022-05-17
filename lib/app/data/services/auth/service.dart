import 'package:recommend_you/app/data/providers/api.dart';
import 'package:recommend_you/app/data/services/auth/repository.dart';
import 'package:get/get.dart';

class AuthService extends GetxService {
  AuthRepository? repository;

  Future<AuthService> init() async {
    repository = AuthRepository(MyApi());
    return this;
  }

  login(mobile) => repository?.login(mobile);
}
