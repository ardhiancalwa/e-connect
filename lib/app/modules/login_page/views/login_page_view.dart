import 'package:e_connect/app/routes/app_pages.dart';
import 'package:e_connect/app/shared/themes/color.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../auth/auth_controller.dart';
import '../controllers/login_page_controller.dart';

class LoginPageView extends GetView<LoginPageController> {
  final authC = Get.find<AuthController>();

  LoginPageView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Welcome to, E-Connect 👌',
                  style: GoogleFonts.poppins(
                      color: primaryColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
                SizedBox(
                  height: 8,
                ),
                Text(
                  'Enter your e-connect account to continue',
                  style: GoogleFonts.poppins(
                    color: secondaryColor,
                    fontSize: 12,
                  ),
                ),
                SizedBox(
                  height: 32,
                ),
                Text(
                  'Email address',
                  style: GoogleFonts.poppins(
                    color: primaryColor,
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                TextField(
                  cursorColor: primaryColor,
                  controller: controller.emailC,
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(
                        color: Colors.grey.shade400,
                      ),
                    ),
                    hintText: 'Your email address',
                    hintStyle: GoogleFonts.poppins(
                        color: greyColor,
                        fontWeight: FontWeight.w300,
                        fontSize: 14),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(
                        color: greyColor,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 24,
                ),
                Text(
                  'Password',
                  style: GoogleFonts.poppins(
                    color: primaryColor,
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                TextField(
                  obscureText: true,
                  cursorColor: primaryColor,
                  controller: controller.passC,
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(
                        color: Colors.grey.shade400,
                      ),
                    ),
                    hintText: 'Your password',
                    hintStyle: GoogleFonts.poppins(
                        color: greyColor,
                        fontWeight: FontWeight.w300,
                        fontSize: 14),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(
                        color: greyColor,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 44,
                ),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: primaryColor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        padding: EdgeInsets.symmetric(vertical: 15)),
                    onPressed: () {
                      authC
                          .login(controller.emailC.text, controller.passC.text)
                          .then((signInSuccessful) {
                        if (signInSuccessful) {
                          Get.snackbar(
                            'Success',
                            "Login successful!",
                            backgroundColor: primaryColor,
                            colorText: whiteColor,
                            duration: Duration(seconds: 2),
                          );
                        } else {
                          Get.snackbar(
                            'Error',
                            "Login failed!",
                            backgroundColor: Colors.red,
                            colorText: whiteColor,
                            duration: Duration(seconds: 2),
                          );
                        }
                      });
                    },
                    child: Text(
                      'Login',
                      style: GoogleFonts.poppins(
                          color: whiteColor,
                          fontSize: 16,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                ),
                SizedBox(
                  height: 24,
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: GestureDetector(
                    onTap: () {
                      Get.toNamed(Routes.FORGOT_PASSWORD_PAGE);
                    },
                    child: Text(
                      'Forgot Password?',
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        color: secondaryColor,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 104,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Didn\'t have a account? ',
                      style: TextStyle(
                        color: primaryColor,
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Get.toNamed(Routes.REGISTER_PAGE);
                      },
                      child: Text(
                        'Register',
                        style: TextStyle(
                          color: primaryColor,
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ));
  }
}
