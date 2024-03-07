import 'package:car_rental/screens/Booking/booking_screen.dart';
import 'package:car_rental/screens/ButtonNav/ButtonNavbar.dart';
import 'package:car_rental/screens/Home/customize_home.dart';
import 'package:car_rental/screens/Info/Info_screen.dart';
import 'package:car_rental/screens/Top_bar/topbar.dart';
import 'package:flutter/material.dart';
// import 'package:shadow/shadow.dart';

class Home_Screen extends StatelessWidget {
  Customs custom = Customs();
  Home_Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        // color: Colors.blueGrey,
        decoration: const BoxDecoration(),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 5,
          ),
          child: SingleChildScrollView(
            child: Column(
              children: [
                TopBar(),
                custom.headModels(car_model: 'suv'),
                SizedBox(
                  height: 250,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      custom.car(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (_) => Info_Screen(),
                            ),
                          );
                        },
                        car_name: 'Supra',
                        image: 'assets/images/car5.jpg',
                        price: '50\$',
                        maxspeed: '300km',
                        year: '2018',
                      ),
                      custom.car(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (_) => Info_Screen(),
                            ),
                          );
                        },
                        car_name: 'Supra',
                        image: 'assets/images/car3.jpg',
                        price: '50\$',
                        maxspeed: '300km',
                        year: '2018',
                      ),
                      custom.car(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (_) => Info_Screen(),
                            ),
                          );
                        },
                        car_name: 'Supra',
                        image: 'assets/images/car2.jpg',
                        price: '50\$',
                        maxspeed: '300km',
                        year: '2018',
                      ),
                    ],
                  ),
                ),
                custom.headModels(car_model: 'suv'),
                SizedBox(
                  height: 250,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      custom.car(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (_) => Info_Screen(),
                            ),
                          );
                        },
                        car_name: 'Supra',
                        image: 'assets/images/car3.jpg',
                        price: '50\$',
                        maxspeed: '300km',
                        year: '2018',
                      ),
                      custom.car(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (_) => Info_Screen(),
                            ),
                          );
                        },
                        car_name: 'Supra',
                        image: 'assets/images/car2.jpg',
                        price: '50\$',
                        maxspeed: '300km',
                        year: '2018',
                      ),
                      custom.car(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (_) => Info_Screen(),
                            ),
                          );
                        },
                        car_name: 'Supra',
                        image: 'assets/images/car4.jpg',
                        price: '50\$',
                        maxspeed: '300km',
                        year: '2018',
                      ),
                    ],
                  ),
                ),
                custom.headModels(car_model: 'suv'),
                SizedBox(
                  height: 250,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      custom.car(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (_) => Info_Screen(),
                            ),
                          );
                        },
                        car_name: 'Supra',
                        image: 'assets/images/car2.jpg',
                        price: '50\$',
                        maxspeed: '300km',
                        year: '2018',
                      ),
                      custom.car(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (_) => Info_Screen(),
                            ),
                          );
                        },
                        car_name: 'Supra',
                        image: 'assets/images/car3.jpg',
                        price: '50\$',
                        maxspeed: '300km',
                        year: '2018',
                      ),
                      custom.car(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (_) => Info_Screen(),
                            ),
                          );
                        },
                        car_name: 'Supra',
                        image: 'assets/images/car4.jpg',
                        price: '50\$',
                        maxspeed: '300km',
                        year: '2018',
                      ),
                    ],
                  ),
                ),
                custom.headModels(car_model: 'suv'),
                SizedBox(
                  height: 250,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      custom.car(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (_) => Info_Screen(),
                            ),
                          );
                        },
                        car_name: 'Supra',
                        image: 'assets/images/car3.jpg',
                        price: '50\$',
                        maxspeed: '300km',
                        year: '2018',
                      ),
                      custom.car(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (_) => Info_Screen(),
                            ),
                          );
                        },
                        car_name: 'Supra',
                        image: 'assets/images/car4.jpg',
                        price: '50\$',
                        maxspeed: '300km',
                        year: '2018',
                      ),
                      custom.car(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (_) => Info_Screen(),
                            ),
                          );
                        },
                        car_name: 'Supra',
                        image: 'assets/images/car2.jpg',
                        price: '50\$',
                        maxspeed: '300km',
                        year: '2018',
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        ),
      ),
      // bottomNavigationBar: const BarButtoms(),
    );
  }
}
