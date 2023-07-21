import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  TextEditingController userNameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  RxBool isPasswordVisible = false.obs;

  RxBool rememberMe = false.obs;

  RxInt? selectedTest = 1.obs;

  List testList = [
    {'id': 1, 'type': 'Admin'},
    {'id': 2, 'type': 'HR Manager'},
    {'id': 3, 'type': 'Teacher'}
  ];
}
