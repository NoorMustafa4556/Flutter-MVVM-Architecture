// lib/View/LoginView.dart

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';      // Provider import karein
import '../Resources/Components/AppColors.dart';
import '../Resources/Components/RoundButton.dart';
import '../Utils/Routes/RoutesName.dart';
import '../Utils/Utils.dart';
import '../ViewModel/AuthViewModel.dart';      // AuthViewModel import karein

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  // ... (controllers, focus nodes, dispose method pehle jaisa hi rahega)
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _emailFocusNode = FocusNode();
  final _passwordFocusNode = FocusNode();
  final ValueNotifier<bool> _obscurePassword = ValueNotifier<bool>(true);

  @override
  void dispose() {
    super.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    _emailFocusNode.dispose();
    _passwordFocusNode.dispose();
    _obscurePassword.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // ViewModel ka instance Provider se hasil kiya
    final authViewModel = Provider.of<AuthViewModel>(context);
    final height = MediaQuery.of(context).size.height * 1;

    return Scaffold(
      appBar: AppBar(

        title: const Text('Login', style: TextStyle(color: AppColors.whiteColor)),
        centerTitle: true,
        backgroundColor: AppColors.buttonColor,

      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // ... (TextFormFields pehle jaise hi rahenge)
              TextFormField(
                controller: _emailController,
                keyboardType: TextInputType.emailAddress,
                focusNode: _emailFocusNode,
                decoration: const InputDecoration(
                    hintText: 'Email',
                    labelText: 'Email',
                    prefixIcon: Icon(Icons.email)),
                onFieldSubmitted: (value) {
                  Utils.fieldFocusChange(
                      context, _emailFocusNode, _passwordFocusNode);
                },
              ),
              const SizedBox(height: 20),
              ValueListenableBuilder(
                valueListenable: _obscurePassword,
                builder: (context, value, child) {
                  return TextFormField(
                    controller: _passwordController,
                    focusNode: _passwordFocusNode,
                    obscureText: _obscurePassword.value,
                    obscuringCharacter: '*',
                    decoration: InputDecoration(
                      hintText: 'Password',
                      labelText: 'Password',
                      prefixIcon: const Icon(Icons.lock_open_rounded),
                      suffixIcon: InkWell(
                        onTap: () {
                          _obscurePassword.value = !_obscurePassword.value;
                        },
                        child: Icon(_obscurePassword.value
                            ? Icons.visibility_off_outlined
                            : Icons.visibility_outlined),

                      ),
                    ),
                  );
                },
              ),

              SizedBox(height: height * .085),

              // Login Button ki logic update ki
              RoundButton(
                title: 'Login',
                loading: authViewModel.loading, // loading state ViewModel se li
                onPress: () {
                  if (_emailController.text.isEmpty) {
                    Utils.flushBarErrorMessage('Please enter email', context);
                  } else if (_passwordController.text.isEmpty) {
                    Utils.flushBarErrorMessage('Please enter password', context);
                  } else if (_passwordController.text.length < 6) {
                    Utils.flushBarErrorMessage('Please enter 6 digit password', context);
                  } else {
                    Map data = {
                      'email': _emailController.text.toString(),
                      'password': _passwordController.text.toString(),
                    };
                    authViewModel.loginApi(data, context);
                  }
                },
              ),
              // LoginView.dart ke build method mein RoundButton ke baad...

              SizedBox(height: height * .02), // Thori si space
              InkWell(
                onTap: (){
                  Navigator.pushNamed(context, RoutesName.signup);
                },
                child: const Text("Don't have an account? Sign Up"),
              )
// ...
            ],
          ),
        ),
      ),
    );
  }
}

// Email: eve.holt@reqres.in

// Password: cityslicka

