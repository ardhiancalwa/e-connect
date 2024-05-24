import 'package:e_connect/app/modules/detail_vehicle/controllers/detail_vehicle_controller.dart';
import 'package:e_connect/app/routes/app_pages.dart';
import 'package:e_connect/app/shared/themes/color.dart';
import 'package:e_connect/app/shared/widgets/card_car.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../auth/auth_controller.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  final authC = Get.find<AuthController>();
  HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(100),
        child: Padding(
          padding: const EdgeInsets.all(25),
          child: AppBar(
            leading: Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: primaryColor,
                image: DecorationImage(
                  image: AssetImage('assets/images/items/profile.png'),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            title: FutureBuilder(
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
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Hello,',
                        style: GoogleFonts.poppins(
                          color: blackColor,
                          fontSize: 20,
                        ),
                      ),
                      Text(
                        user!['fullname'],
                        style: GoogleFonts.poppins(
                            color: blackColor,
                            fontSize: 20,
                            fontWeight: FontWeight.w600),
                      ),
                    ],
                  );
                } else {
                  return Text('No Data');
                }
              },
            ),
            actions: [
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: whiteColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  padding: EdgeInsets.zero, // Remove default padding
                  tapTargetSize:
                      MaterialTapTargetSize.shrinkWrap, // Adjust tap area
                  minimumSize: Size(50, 50),
                  elevation: 5.0, // Add elevation for shadow effect
                  shadowColor: Colors.grey.withOpacity(0.5),
                ),
                onPressed: () {},
                child: Image.asset('assets/images/icons/notification.png'),
              ),
              SizedBox(
                width: 14,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  padding: EdgeInsets.zero,
                  tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  minimumSize: Size(50.0, 50.0),
                  elevation: 5.0,
                  shadowColor: Colors.grey.withOpacity(0.5),
                ),
                onPressed: () {
                  Get.bottomSheet(
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20),
                        ),
                        color: Colors.white,
                      ),
                      padding: EdgeInsets.all(20.0), // Adjust padding as needed
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            'Add Vehicle',
                            style: GoogleFonts.poppins(
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          SizedBox(height: 14),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment
                                .start, // Align content vertically
                            children: [
                              // Container for photo
                              Container(
                                height: 100.0, // Adjust height as needed
                                width: 100.0, // Adjust width as needed
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8.0),
                                  color: Colors.grey[200], // Placeholder color
                                  image: DecorationImage(
                                    // Replace with your logic to display actual image
                                    image: AssetImage(
                                      'assets/images/icons/add_photo.png',
                                    ),
                                    // fit: BoxFit.fill, // Adjust image fitting
                                  ),
                                ),
                              ),
                              SizedBox(width: 10.0),
                              Expanded(
                                child: Column(
                                  children: [
                                    TextField(
                                      autocorrect: false,
                                      cursorColor: primaryColor,
                                      keyboardType: TextInputType.text,
                                      decoration: InputDecoration(
                                        hintText: 'Name Vehicle',
                                        hintStyle: GoogleFonts.poppins(
                                          fontSize: 12,
                                          color: blackColor,
                                          fontWeight: FontWeight.w400,
                                        ),
                                        enabledBorder: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(12),
                                          borderSide: BorderSide(
                                            color: greyColor,
                                          ),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(12),
                                          borderSide: BorderSide(
                                            color: greyColor,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(height: 10.0),
                                    TextField(
                                      autocorrect: false,
                                      cursorColor: primaryColor,
                                      keyboardType: TextInputType.text,
                                      decoration: InputDecoration(
                                        hintText: 'Model Vehicle',
                                        hintStyle: GoogleFonts.poppins(
                                          fontSize: 12,
                                          color: blackColor,
                                          fontWeight: FontWeight.w400,
                                        ),
                                        enabledBorder: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(12),
                                          borderSide: BorderSide(
                                            color: greyColor,
                                          ),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(12),
                                          borderSide: BorderSide(
                                            color: greyColor,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 10.0),
                          TextField(
                            autocorrect: false,
                            cursorColor: primaryColor,
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                              hintText: 'Cost (Charge)',
                              hintStyle: GoogleFonts.poppins(
                                fontSize: 12,
                                color: blackColor,
                                fontWeight: FontWeight.w400,
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(12),
                                borderSide: BorderSide(
                                  color: greyColor,
                                ),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(12),
                                borderSide: BorderSide(
                                  color: greyColor,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 10.0),
                          TextField(
                            autocorrect: false,
                            cursorColor: primaryColor,
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                              hintText: 'Range (km)',
                              hintStyle: GoogleFonts.poppins(
                                fontSize: 12,
                                color: blackColor,
                                fontWeight: FontWeight.w400,
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(12),
                                borderSide: BorderSide(
                                  color: greyColor,
                                ),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(12),
                                borderSide: BorderSide(
                                  color: greyColor,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 10.0),
                          SizedBox(
                            width: double.infinity,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: primaryColor,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(12),
                                  )),
                              onPressed: () {
                                // Handle form submission (e.g., save data)
                                Get.back();
                                
                              },
                              child: Text(
                                'Save',
                                style: GoogleFonts.poppins(
                                  color: whiteColor,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    isScrollControlled: true,
                  );
                },
                child: Image.asset('assets/images/icons/add.png'),
              ),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(30),
          child: Column(
            children: [
              GestureDetector(
                onTap: () {
                  Get.toNamed(Routes.DETAIL_VEHICLE);
                },
                child: Card_Car(
                  controller: DetailVehicleController(),
                  image: 'heading_car',
                  cost: '70.000',
                  model: 'Electric Car',
                  range: '312',
                  title: 'Tesla Type X',
                ),
              ),
              SizedBox(
                height: 8,
              ),
              GestureDetector(
                onTap: () {
                  Get.toNamed(Routes.DETAIL_VEHICLE);
                },
                child: Card_Car(
                  controller: DetailVehicleController(),
                  image: 'heading_car_1',
                  cost: '120.000',
                  model: 'Electric Car',
                  range: '521',
                  title: 'BWM i8',
                ),
              ),
              SizedBox(
                height: 8,
              ),
              GestureDetector(
                onTap: () {
                  Get.toNamed(Routes.DETAIL_VEHICLE);
                },
                child: Card_Car(
                  controller: DetailVehicleController(),
                  image: 'heading_car_2',
                  cost: '80.000',
                  model: 'Electric Car',
                  range: '411',
                  title: 'Mercedes EQS',
                ),
              ),
              SizedBox(
                height: 8,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
