import 'package:car_rental/screens/log_reg_spla/Login/login_screen.dart';
import 'package:car_rental/screens/log_reg_spla/Register/register_screen.dart';
import 'package:car_rental/screens/log_reg_spla/widget/custom_button.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => LoginScreen()));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(backgroundColor: Colors.black),
      body: Stack(
        alignment: Alignment.bottomLeft,
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage('assets/images/image_splash.jpg'),
              ),
            ),
          ),
          const Center(
            child: Padding(
              padding: EdgeInsets.only(bottom: 150),
              child: Text(
                'Cars Rental',
                style: TextStyle(
                    fontFamily: 'Rakkas',
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    color: Color(0xffF4CE14),),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
