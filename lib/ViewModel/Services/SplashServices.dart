import 'dart:async';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import '../../Model/UserModel.dart';
import '../../Utils/Routes/RoutesName.dart';
import '../UserViewModel.dart';


class SplashServices {

  Future<UserModel> getUserData() => UserViewModel().getUser();

  void checkAuthentication(BuildContext context) async {

    getUserData().then((value) {
      // Delay for splash screen visibility
      Timer(const Duration(seconds: 3), () {
        if (value.token == null || value.token == '') {
          Navigator.pushNamedAndRemoveUntil(context, RoutesName.login, (route) => false);
        } else {
          Navigator.pushNamedAndRemoveUntil(context, RoutesName.home, (route) => false);
        }
      });
    }).onError((error, stackTrace) {
      if (kDebugMode) {
        print(error.toString());
      }
    });
  }
}