import 'package:flutter/material.dart';

class TopBar extends StatelessWidget {
  TopBar({Key? key, this.username});

  String? username;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 800,
      margin: const EdgeInsets.symmetric(vertical: 25),
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Color(0xffF1F1F2),
        border: Border.all(
          width: 2,
          color: Color(0xff495E57),
        ),
        borderRadius: BorderRadius.circular(501),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // InkWell(
          //   onTap: () {},
          //   child: const CircleAvatar(
          //     radius: 35,
          //     backgroundImage: AssetImage('assets/images/ergo_proxy.jpg'),
          //   ),
          // ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              children: [
                Row(
                  children: [
                    Text(
                      'Welcome,',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      ' Ahmed',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                Text(
                  'Egypt-cairo',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
