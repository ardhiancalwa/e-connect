import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../modules/detail_vehicle/controllers/detail_vehicle_controller.dart';
import '../themes/color.dart';

class Card_Car extends StatelessWidget {
  String image;
  String title;
  String model;
  String cost;
  String range;

  Card_Car({
    required this.image,
    required this.title,
    required this.model,
    required this.cost,
    required this.range,
    required this.controller,
    super.key,
  });

  final DetailVehicleController controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 170,
      width: double.infinity,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.grey
                .withOpacity(0.2), // Adjust color and opacity as needed
            blurRadius: 10.0, // Adjust blur radius for softness
            spreadRadius: 0.0, // Adjust spread radius for shadow size
            offset: Offset(0.0, 4.0), // Adjust offset for shadow direction
          ),
        ],
        borderRadius: BorderRadius.circular(
          12,
        ),
        color: whiteColor,
      ),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Row(
              children: [
                Row(
                  children: [
                    Container(
                      height: 72,
                      width: 78,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(
                          color: Colors.grey.shade300,
                          width: 5.0,
                        ),
                        image: DecorationImage(
                          image: AssetImage(
                            'assets/images/items/$image.png',
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          title,
                          style: GoogleFonts.poppins(
                            color: blackColor,
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        RichText(
                          text: TextSpan(
                            text: 'Model : ',
                            style: GoogleFonts.poppins(
                              color: primaryColor,
                              fontSize: 12,
                            ),
                            children: [
                              TextSpan(
                                text: model,
                                style: TextStyle(
                                  color: greyColor,
                                  fontSize: 12,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 33,
                    ),
                    Obx(
                      () => CupertinoSwitch(
                        value: controller.light,
                        onChanged: (bool value) => controller.toggleLight(),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 5,
            ),
            Divider(),
            SizedBox(
              height: 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      backgroundColor: thirdColor,
                      child: Image.asset(
                        'assets/images/icons/money.png',
                        color: darkGreyColor,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Cost Charge',
                          style: GoogleFonts.poppins(
                            fontSize: 14,
                          ),
                        ),
                        Text(
                          '$cost IDR',
                          style: GoogleFonts.poppins(
                              fontSize: 14, fontWeight: FontWeight.w600),
                        ),
                      ],
                    )
                  ],
                ),
                Row(
                  children: [
                    CircleAvatar(
                      backgroundColor: thirdColor,
                      child: Image.asset(
                        'assets/images/icons/range.png',
                        color: darkGreyColor,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Range',
                          style: GoogleFonts.poppins(
                            fontSize: 14,
                          ),
                        ),
                        Text(
                          '$range KM',
                          style: GoogleFonts.poppins(
                              fontSize: 14, fontWeight: FontWeight.w600),
                        ),
                      ],
                    )
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
