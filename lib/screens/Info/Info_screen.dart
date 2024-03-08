import 'package:car_rental/List_info_car.dart';
import 'package:car_rental/screens/Booking/booking_screen.dart';
import 'package:car_rental/screens/Info/custom_details.dart';
import 'package:car_rental/screens/Info/custom_images.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Info_Screen extends StatelessWidget {
  final String name;
  final String year;
  final String topspeed;
  final String allow;
  Info_Screen(
      {super.key,
      required this.name,
      required this.year,
      required this.topspeed,
      required this.allow});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Details',
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: ListView(
          children: [
            const SizedBox(
              height: 10,
            ),
            InkWell(
              onTap: () {
                showDialog(
                  context: context,
                  barrierDismissible: true,
                  builder: (context) => AlertDialog(
                    backgroundColor: Colors.transparent,
                    contentPadding: EdgeInsets.zero,
                    content: ClipRRect(
                      borderRadius: BorderRadius.circular(25),
                      child: Container(
                        width: 250,
                        height: 200,
                        color: Colors.white,
                        child: Container(
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              // fit: BoxFit.cover,
                              image: AssetImage('assets/images/car3.jpg'),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                );
              },
              child: Container(
                margin: const EdgeInsets.all(8),
                width: 400,
                height: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  image: const DecorationImage(
                    image: AssetImage('assets/images/car3.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 150,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: BMW_500_Li.length,
                itemBuilder: (context, index) {
                  return CustomImages(
                      image1: BMW_500_Li[index]['image1'],
                      image2: BMW_500_Li[index]['image2'],
                      image3: BMW_500_Li[index]['image3'],
                      image4: BMW_500_Li[index]['image4']);
                },
              ),
              // child: ListView.builder(
              //   itemCount: carDetailList.length,
              //   scrollDirection: Axis.horizontal,
              //   itemBuilder: (context, index) {
              //     final carDetails = carDetailList[index];
              //     return customImages(
              //       image1: carDetails['image1']??'',
              //       image2: carDetails['image2']??'',
              //       image3: carDetails['image3']??'',
              //       image4: carDetails['image4']??'',
              //     );
              //   },
              // ),
            ),
            const SizedBox(
              height: 15,
            ),
            SizedBox(
              height: 150,
              child: ListView.builder(
                itemCount: BMW_X1.length,
                itemBuilder: (context, index) {
                  return Details(
                    name: BMW_X1[index]['name'],
                    year: BMW_X1[index]['year'],
                    topspeed: BMW_X1[index]['Top Speed'],
                    allow: BMW_X1[index]['KM Allow per day'],
                  );
                },
              ),
              // child: ListView.builder(
              //   itemCount: carDetailList.length,
              //   itemBuilder: (context, index) {
              //     final carDetails = carDetailList[index];
              //     return Details(
              //       name: carDetails['name'] ?? '',
              //       year: carDetails['year'] ?? '',
              //       topspeed: carDetails['Top Speed'] ?? '',
              //       allow: carDetails['KM Allow per day'] ?? '',
              //     );
              //   },
              // ),
            ),
            const SizedBox(
              height: 20,
            ),
            Center(
              child: SizedBox(
                width: double.infinity,
                height: 50,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xffF4CE14),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => BookScreen(),
                      ),
                    );
                  },
                  child: const Text(
                    'Book Now',
                    style: TextStyle(color: Colors.white, fontSize: 26),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

                       ///Ride it with appbar info
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //   children: [
            //     Text(
            //       "Ride It",
            //       style: TextStyle(
            //           color: Colors.black,
            //           fontSize: 35,
            //           fontWeight: FontWeight.bold),
            //     ),
            //     Icon(
            //       Icons.chat,
            //       size: 35,
            //       color: Colors.blue,
            //     )
            //   ],
            // ),
            // const SizedBox(
            //   height: 10,
            // ),
            // const Row(
            //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //   children: [
            //     SizedBox(
            //       height: 50,
            //       width: 50,
            //       child: CircleAvatar(
            //         radius: 50.0,
            //         backgroundImage: AssetImage(
            //           'assets/images/7mama.jpg',
            //         ),
            //       ),
            //     ),
            //     Column(
            //       children: [
            //         Text(
            //           "Salma Alhasan",
            //           style: TextStyle(
            //             color: Colors.black,
            //             fontSize: 20,
            //           ),
            //         ),
            //         Text(
            //           "Chevrolet Camaro 2018",
            //           style: TextStyle(
            //               color: Colors.black,
            //               fontSize: 20,
            //               fontWeight: FontWeight.bold),
            //         ),
            //         Text(
            //           "86 trips",
            //           style: TextStyle(
            //               color: Colors.grey,
            //               fontSize: 10,
            //               fontWeight: FontWeight.bold),
            //         ),
            //       ],
            //     ),
            //     Row(
            //       children: [
            //         Icon(
            //           Icons.star,
            //           size: 20,
            //           color: Colors.blue,
            //         ),
            //         Text(
            //           "4.0",
            //           style: TextStyle(
            //             color: Colors.black,
            //             fontSize: 20,
            //           ),
            //         ),
            //       ],
            //     ),
            //   ],
            // ),