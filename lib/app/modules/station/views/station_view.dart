import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../shared/themes/color.dart';
import '../../../shared/widgets/station_card.dart';
import '../controllers/station_controller.dart';

class StationView extends GetView<StationController> {
  const StationView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(100),
          child: Padding(
            padding: const EdgeInsets.all(25),
            child: AppBar(
              title: Text(
                'Find Station',
                style: GoogleFonts.poppins(
                  color: blackColor,
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
              ),
              centerTitle: true,
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
                  child: Image.asset('assets/images/icons/menu.png'),
                ),
              ],
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                PhysicalModel(
                  color: whiteColor,
                  elevation: 5,
                  shadowColor: Colors.grey
                      .withOpacity(0.5), // Shadow color with transparency
                  borderRadius: BorderRadius.circular(8.0),
                  child: TextField(
                    autocorrect: false,
                    cursorColor: primaryColor,
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: BorderSide(
                          color: whiteColor,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: BorderSide(
                          color: whiteColor,
                        ),
                      ),
                      hintText: 'Search charge stations',
                      hintStyle: GoogleFonts.poppins(
                        color: greyColor,
                        fontSize: 12,
                      ),
                      prefixIcon: Image.asset('assets/images/icons/search.png'),
                    ),
                  ),
                ),
                SizedBox(
                  height: 34,
                ),
                Text(
                  'Subway Charging Station',
                  style: GoogleFonts.poppins(
                    color: blackColor,
                    fontSize: 22,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Row(
                  children: [
                    Image.asset(
                      'assets/images/icons/location.png',
                      width: 16,
                      height: 16,
                      color: primaryColor,
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Text(
                      '25 Km/10 Min',
                      style: GoogleFonts.poppins(
                        color: blackColor,
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 14,
                ),
                Text(
                  'Reviews',
                  style: GoogleFonts.poppins(
                    color: blackColor,
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(
                  height: 14,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Station_Card(
                        image: 'station_1',
                        nameStation: 'Power Charging Station',
                        addressStation: '5327 Interstate Commerce Drive,FL',
                        range: '450 km',
                      ),
                      SizedBox(
                        width: 14,
                      ),
                      Station_Card(
                        image: 'station_2',
                        nameStation: 'Eco Charge Station',
                        addressStation: '123 Main St, CA',
                        range: '120 km',
                      ),
                      SizedBox(
                        width: 14,
                      ),
                      Station_Card(
                        image: 'station_3',
                        nameStation: 'Green Power Station',
                        addressStation: '456 Elm St, TX',
                        range: '510 km',
                      ),
                      SizedBox(
                        width: 14,
                      ),
                      Station_Card(
                        image: 'station_4',
                        nameStation: 'Rapid Charge Station',
                        addressStation: '789 Maple St, NY',
                        range: '51 km',
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 22,
                ),
                Container(
                  height: 200,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    image: DecorationImage(
                      image: AssetImage(
                        'assets/images/items/maps.png',
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
