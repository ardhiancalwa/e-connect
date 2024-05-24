import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../themes/color.dart';

class Car_Comunity extends StatelessWidget {
  Car_Comunity({
    required this.image,
    required this.nameCar,
    required this.modelCar,
    required this.energyCar,
    super.key,
  });

  String image;
  String nameCar;
  String modelCar;
  String energyCar;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 118,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: whiteColor,
        boxShadow: [
          BoxShadow(
            color: Colors.grey
                .withOpacity(0.2), // Adjust color and opacity as needed
            blurRadius: 10.0, // Adjust blur radius for softness
            spreadRadius: 0.0, // Adjust spread radius for shadow size
            offset: Offset(0.0, 4.0), // Adjust offset for shadow direction
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: Row(
          children: [
            Container(
              height: 90,
              width: 90,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                image: DecorationImage(
                  image: AssetImage('assets/images/items/$image.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(
              width: 20,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  nameCar,
                  style: GoogleFonts.poppins(
                    color: blackColor,
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                RichText(
                  text: TextSpan(
                    text: 'Model : ',
                    style: GoogleFonts.poppins(
                      color: primaryColor,
                      fontSize: 14,
                    ),
                    children: [
                      TextSpan(
                        text: modelCar,
                        style: GoogleFonts.poppins(
                          color: greyColor,
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 6,
                ),
                Row(
                  children: [
                    Image.asset('assets/images/icons/energy.png'),
                    SizedBox(
                      width: 8,
                    ),
                    Text(
                      energyCar,
                      style: GoogleFonts.poppins(
                        color: blackColor,
                        fontSize: 14,
                      ),
                    ),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
