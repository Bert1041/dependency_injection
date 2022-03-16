import 'package:dependency_injection/services/login_service.dart';
import 'package:dependency_injection/services/user_service.dart';
import 'package:get_it/get_it.dart';


GetIt locator = GetIt.instance;


void setupLocator() {
  locator.registerSingleton(UserService());
  locator.registerFactory<LoginService>(() => LoginService());
}