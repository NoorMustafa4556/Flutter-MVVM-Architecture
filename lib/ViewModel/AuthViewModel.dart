// lib/ViewModel/AuthViewModel.dart

import 'package:flutter/material.dart';
import '../Repository/AuthRepository.dart';
import '../Utils/Routes/RoutesName.dart';
import '../Utils/Utils.dart';

class AuthViewModel with ChangeNotifier {

  final _myRepo = AuthRepository();

  // For loading state on the button
  bool _loading = false;
  bool get loading => _loading;

  setLoading(bool value){
    _loading = value;
    notifyListeners();
  }
  // Sign Up API Function
  Future<void> signUpApi(dynamic data, BuildContext context) async {
    setLoading(true);

    _myRepo.registerApi(data).then((value){
      setLoading(false);
      Utils.flushBarErrorMessage('Sign Up Successfully', context);
      Navigator.pushNamed(context, RoutesName.home);
      print(value.toString());

    }).onError((error, stackTrace){
      setLoading(false);
      Utils.flushBarErrorMessage(error.toString(), context);
      print(error.toString());
    });
  }

  // Login API Function
  Future<void> loginApi(dynamic data, BuildContext context) async {

    setLoading(true);

    _myRepo.loginApi(data).then((value){
      setLoading(false);
      Utils.flushBarErrorMessage('Login Successfully', context);
      Navigator.pushNamed(context, RoutesName.home);
      print(value.toString());

    }).onError((error, stackTrace){
      setLoading(false);
      Utils.flushBarErrorMessage(error.toString(), context);
      print(error.toString());
    });
  }
}