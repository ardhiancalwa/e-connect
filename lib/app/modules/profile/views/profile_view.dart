import 'package:e_connect/app/shared/themes/color.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../auth/auth_controller.dart';
import '../controllers/profile_controller.dart';

class ProfileView extends GetView<ProfileController> {
  ProfileView({Key? key}) : super(key: key);

  final authC = Get.find<AuthController>();
  bool isConfirmingLogout = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Profile',
            style: GoogleFonts.poppins(
              color: blackColor,
              fontSize: 20,
              fontWeight: FontWeight.w600,
            ),
          ),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(30),
            child: Column(
              children: [
                Center(
                  child: Stack(
                    children: [
                      Container(
                        height: 152,
                        width: 152,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          color: primaryColor,
                          image: DecorationImage(
                            image: AssetImage(
                                'assets/images/items/profile_page.png'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 8.0, // Adjust positioning as needed
                        right: 0.0, // Adjust positioning as needed
                        child: ElevatedButton(
                          // Use ElevatedButton for a raised button
                          onPressed: () {
                            // Handle button press action (e.g., open image picker)
                          },
                          child: Icon(
                            Icons.add_a_photo,
                            color: blackColor,
                          ), // Icon for "Add Photo"
                          style: ElevatedButton.styleFrom(
                            shape: CircleBorder(), // Make the button circular
                            backgroundColor:
                                whiteColor, // Set button background color
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 22,
                ),
                FutureBuilder(
                    future: authC.getData(),
                    builder: (context, snapshot) {
                      if (snapshot.connectionState == ConnectionState.waiting) {
                        return const Center(
                          child: CircularProgressIndicator(),
                        );
                      } else if (snapshot.hasError) {
                        return Text("${snapshot.error}");
                      } else if (snapshot.hasData) {
                        Map<String, dynamic>? user = snapshot.data!.data();
                        return Column(
                          children: [
                            Text(
                              user!['fullname'],
                              style: GoogleFonts.poppins(
                                color: blackColor,
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Text(
                              user!['email'],
                              style: GoogleFonts.poppins(
                                color: blackColor,
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        );
                      } else {
                        return Text('No Data');
                      }
                    }),
                SizedBox(
                  height: 14,
                ),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: primaryColor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        )),
                    onPressed: () {},
                    child: Text(
                      'Edit',
                      style: TextStyle(
                        color: whiteColor,
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Divider(),
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: 50,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: whiteColor,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(
                            0.3), // Adjust shadow color and transparency
                        blurRadius: 5.0, // Adjust blur radius of the shadow
                        offset:
                            const Offset(2.0, 2.0), // Adjust shadow position
                      )
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(15),
                    child: Row(
                      children: [
                        Image.asset(
                          'assets/images/icons/setting.png',
                          width: 24,
                          height: 24,
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Text(
                          'Settings',
                          style: GoogleFonts.poppins(
                            color: blackColor,
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: 50,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: whiteColor,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(
                            0.3), // Adjust shadow color and transparency
                        blurRadius: 5.0, // Adjust blur radius of the shadow
                        offset:
                            const Offset(2.0, 2.0), // Adjust shadow position
                      )
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(15),
                    child: Row(
                      children: [
                        Image.asset(
                          'assets/images/icons/support.png',
                          width: 24,
                          height: 24,
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Text(
                          'Support',
                          style: GoogleFonts.poppins(
                            color: blackColor,
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: 50,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: whiteColor,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(
                            0.3), // Adjust shadow color and transparency
                        blurRadius: 5.0, // Adjust blur radius of the shadow
                        offset:
                            const Offset(2.0, 2.0), // Adjust shadow position
                      )
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(15),
                    child: Row(
                      children: [
                        Image.asset(
                          'assets/images/icons/about.png',
                          width: 24,
                          height: 24,
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Text(
                          'About us',
                          style: GoogleFonts.poppins(
                            color: blackColor,
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                GestureDetector(
                  onTap: () {
                    isConfirmingLogout = true;
                    Get.dialog(
                      AlertDialog(
                        title: Text(
                          'Confirm Logout',
                          style: GoogleFonts.poppins(
                            color: blackColor,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        content: Text(
                          'Are you sure you want to log out?',
                          style: GoogleFonts.poppins(
                            color: blackColor,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        actions: [
                          TextButton(
                            onPressed: () =>
                                Get.back(), // Close dialog without logging out
                            child: Text(
                              'Cancel',
                              style: GoogleFonts.poppins(
                                color: Colors.red,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                          TextButton(
                            onPressed: () {
                              // Perform logout action if confirmed
                              authC.logout();
                              Get.back(); // Close dialog after logout
                            },
                            child: Text(
                              'Log out',
                              style: GoogleFonts.poppins(
                                color: blackColor,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                  child: Container(
                    height: 50,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: whiteColor,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(
                              0.3), // Adjust shadow color and transparency
                          blurRadius: 5.0, // Adjust blur radius of the shadow
                          offset:
                              const Offset(2.0, 2.0), // Adjust shadow position
                        )
                      ],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(15),
                      child: Row(
                        children: [
                          Image.asset(
                            'assets/images/icons/logout.png',
                            color: Colors.red,
                            width: 24,
                            height: 24,
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          Text(
                            'Log out',
                            style: GoogleFonts.poppins(
                              color: Colors.red,
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
