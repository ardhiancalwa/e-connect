import 'package:e_connect/app/shared/themes/color.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../routes/app_pages.dart';
import '../controllers/forgot_password_page_controller.dart';

class ForgotPasswordPageView extends GetView<ForgotPasswordPageController> {
  TextEditingController emailC = TextEditingController();
  ForgotPasswordPageView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          leading: IconButton(
            onPressed: () {
              Get.back();
            },
            icon: Icon(
              Icons.arrow_back_ios_new_rounded,
              color: secondaryColor,
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Forgot Password? 🔒',
                  style: GoogleFonts.poppins(
                      color: primaryColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
                SizedBox(
                  height: 8,
                ),
                Text(
                  'Please input your email to recover your e-connect account',
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
                  controller: emailC,
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
                      padding: EdgeInsets.symmetric(vertical: 15),
                    ),
                    onPressed: () {
                      if (emailC.text.isEmpty) {
                        Get.snackbar(
                          'Error',
                          'Please enter your email',
                          backgroundColor: Colors.red,
                          colorText: whiteColor,
                          duration: Duration(seconds: 2),
                        );
                      } else {
                        Get.snackbar(
                          'Success',
                          "Revocery account successful! Please check your email",
                          backgroundColor: primaryColor,
                          colorText: whiteColor,
                          duration: Duration(seconds: 2),
                        );
                      }
                    },
                    child: Text(
                      'Revocer Account',
                      style: GoogleFonts.poppins(
                          color: whiteColor,
                          fontSize: 16,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
