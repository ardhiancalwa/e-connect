import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../shared/themes/color.dart';
import '../../../shared/widgets/car_comunity.dart';
import '../controllers/vehicle_controller.dart';

class VehicleView extends GetView<VehicleController> {
  const VehicleView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(100),
          child: Padding(
            padding: const EdgeInsets.all(25),
            child: AppBar(
              title: Text(
                'Electric Vehicle',
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
                  child: Image.asset('assets/images/icons/history.png'),
                ),
              ],
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Expanded(
                      child: PhysicalModel(
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
                            hintText: 'Search for Electric Vehicle',
                            hintStyle: GoogleFonts.poppins(
                              color: greyColor,
                              fontSize: 12,
                            ),
                            prefixIcon:
                                Image.asset('assets/images/icons/search.png'),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 7,
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: primaryColor,
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
                      child: Image.asset(
                        'assets/images/icons/category.png',
                        color: whiteColor,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 28,
                ),
                Text(
                  'Connect with Electric Car Experts',
                  style: GoogleFonts.poppins(
                    color: blackColor,
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Find an Electric Car Community You\'ll Love',
                  style: GoogleFonts.poppins(
                    color: blackColor,
                    fontSize: 12,
                  ),
                ),
                SizedBox(
                  height: 28,
                ),
                Car_Comunity(
                  image: 'neta_v',
                  nameCar: 'Neta V',
                  modelCar: 'Electric Car',
                  energyCar: '66.2 kwh',
                ),
                SizedBox(
                  height: 25,
                ),
                Car_Comunity(
                  image: 'hyundai_5',
                  nameCar: 'Hyundai Ioniq 5',
                  modelCar: 'Electric Car',
                  energyCar: '57.5 kwh',
                ),
                SizedBox(
                  height: 25,
                ),
                Car_Comunity(
                  image: 'fiat_500',
                  nameCar: 'Fiat 500/Abarth 500e',
                  modelCar: 'Electric Car',
                  energyCar: '45,1 kwh',
                )
              ],
            ),
          ),
        ));
  }
}
