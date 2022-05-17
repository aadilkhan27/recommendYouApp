import 'package:recommend_you/app/data/providers/api.dart';

class AuthRepository {
  final MyApi api;

  AuthRepository(this.api);

  login(mobile) => api.login(mobile);
}
