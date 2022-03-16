import 'package:flutter/material.dart';

import '../service_locator.dart';
import '../services/user_service.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var userService = locator<UserService>();

    return Center(
      child: Container(
        height: 150,
        width: 150,
        color: Colors.blueGrey,
        child: Center(
            child: Text(
          userService.userName,
          style: const TextStyle(
            fontSize: 25,
            color: Colors.purple,
            fontWeight: FontWeight.bold,
          ),
        )),
      ),
    );
  }
}
