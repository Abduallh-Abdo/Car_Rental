import 'package:car_rental/screens/Home/homeScreen.dart';
import 'package:car_rental/screens/log_reg_spla/Splash/splash_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const CarRental());
}

class CarRental extends StatelessWidget {
  const CarRental({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
