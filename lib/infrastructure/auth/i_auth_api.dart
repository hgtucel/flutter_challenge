import 'package:challenge_app/domain/auth/auth_model.dart';
import 'package:challenge_app/domain/auth/login_model.dart';

abstract class IAuthApi {
  Future login(LoginModel auth);
  Future logout();
  Future register(AuthModel auth);
}
