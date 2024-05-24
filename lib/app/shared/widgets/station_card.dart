import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../themes/color.dart';

class Station_Card extends StatelessWidget {
  String image;
  String nameStation;
  String addressStation;
  String range;

  Station_Card({
    required this.image,
    required this.nameStation,
    required this.addressStation,
    required this.range,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: 300,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: whiteColor,
      ),
      child: Column(
        children: [
          Stack(
            children: [
              Container(
                height: 140,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(12),
                    topRight: Radius.circular(12),
                  ),
                  image: DecorationImage(
                    image: AssetImage(
                      'assets/images/items/$image.jpg',
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Positioned(
                top: 8.0, // Adjust positioning as needed
                left: 8.0, // Adjust positioning as needed
                child: SizedBox(
                  height: 30,
                  width: 110,
                  child: ElevatedButton(
                    // Use ElevatedButton for a raised button
                    onPressed: () {
                      // Handle button press action (e.g., open image picker)
                    },
                    child: Row(
                      children: [
                        Image.asset(
                          'assets/images/icons/jarak.png',
                          color: Colors.amber,
                          width: 16,
                          height: 16,
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Text(
                          range,
                          style: TextStyle(
                            fontSize: 10,
                            color: blackColor,
                            fontWeight: FontWeight.bold,
                          ),
                        )
                      ],
                    ),
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ), // Make the button circular
                      backgroundColor: whiteColor
                          .withOpacity(0.9), // Set button background color
                    ),
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 5),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  nameStation,
                  style: GoogleFonts.poppins(
                    color: blackColor,
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  addressStation,
                  style: GoogleFonts.poppins(
                    color: greyColor,
                    fontSize: 12,
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
