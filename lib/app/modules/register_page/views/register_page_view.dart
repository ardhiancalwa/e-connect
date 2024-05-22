import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/register_page_controller.dart';

class RegisterPageView extends GetView<RegisterPageController> {
  const RegisterPageView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('RegisterPageView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'RegisterPageView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
