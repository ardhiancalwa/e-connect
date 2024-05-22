import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/login_page_controller.dart';

class LoginPageView extends GetView<LoginPageController> {
  const LoginPageView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('LoginPageView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'LoginPageView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
