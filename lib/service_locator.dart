import 'package:dependency_injection/services/login_service.dart';
import 'package:dependency_injection/services/user_service.dart';
import 'package:get_it/get_it.dart';

/* We'll use everything in the global scope so we can just import the file and have access to the locator.
Create a new function called setupLocator where we will register our services and models.
 */

GetIt locator = GetIt.instance;

void setupLocator() {
  locator.registerSingleton(UserService());
  locator.registerFactory<LoginService>(() => LoginService());
}

/*
* Using get_it, class types can be registered in two ways.

Factory: When you request an instance of the type from the service provider you'll get a new instance everytime. Good for registering ViewModels that need to run the same logic on start or that has to be new when the view is opened.

Singleton: Singletons can be registered in two ways. Provide an implementation upon registration or provide a lamda that will be invoked the first time your instance is requested (LazySingleton). The Locator keeps a single instance of your registered type and will always return you that instance.*/
