import 'package:car_rental/list_cars.dart';
import 'package:car_rental/screens/Home/custom_container.dart';
import 'package:car_rental/screens/Home/customize_home.dart';
import 'package:car_rental/screens/Info/Info_screen.dart';
import 'package:car_rental/screens/Top_bar/topbar.dart';
import 'package:flutter/material.dart';

class Home_Screen extends StatelessWidget {
  String? name;
  Customs custom = Customs();
  Home_Screen({super.key, this.name});

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
                TopBar(username: name!),
                custom.headModels(car_model: 'Alfa'),
                SizedBox(
                  height: 250,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: AlfaCars.length,
                    itemBuilder: (context, index) {
                      return InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (_) => Info_Screen(
                                car: AlfaCars[index],
                              ),
                            ),
                          );
                        },
                        child: CustomContaineHome(
                          image: AlfaCars[index]['image'],
                          name: AlfaCars[index]['name'],
                          year: AlfaCars[index]['year'],
                          speed: AlfaCars[index]['speed'],
                          price: AlfaCars[index]['price'],
                        ),
                      );
                    },
                  ),
                ),
                custom.headModels(car_model: 'BMW'),
                SizedBox(
                  height: 250,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: BMWCars.length,
                    itemBuilder: (context, index) {
                      return InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (_) => Info_Screen(car: BMWCars[index]),
                            ),
                          );
                        },
                        child: CustomContaineHome(
                          image: BMWCars[index]['image'],
                          name: BMWCars[index]['name'],
                          year: BMWCars[index]['year'],
                          speed: BMWCars[index]['speed'],
                          price: BMWCars[index]['price'],
                        ),
                      );
                    },
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                custom.headModels(car_model: 'Mercedes'),
                SizedBox(
                  height: 250,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: MercedesCar.length,
                    itemBuilder: (context, index) {
                      return InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (_) => Info_Screen(
                                car: MercedesCar[index],
                              ),
                            ),
                          );
                        },
                        child: CustomContaineHome(
                          image: MercedesCar[index]['image'],
                          name: MercedesCar[index]['name'],
                          year: MercedesCar[index]['year'],
                          speed: MercedesCar[index]['speed'],
                          price: MercedesCar[index]['price'],
                        ),
                      );
                    },
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                custom.headModels(car_model: 'Ford'),
                SizedBox(
                  height: 250,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: FordCars.length,
                    itemBuilder: (context, index) {
                      return InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (_) => Info_Screen(
                                car: FordCars[index],
                              ),
                            ),
                          );
                        },
                        child: CustomContaineHome(
                          image: FordCars[index]['image'],
                          name: FordCars[index]['name'],
                          year: FordCars[index]['year'],
                          speed: FordCars[index]['speed'],
                          price: FordCars[index]['price'],
                        ),
                      );
                    },
                  ),
                ),
                SizedBox(
                  height: 30,
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
