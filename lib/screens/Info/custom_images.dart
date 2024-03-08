import 'package:flutter/material.dart';

class CustomImages extends StatelessWidget {
  final String image1;
  final String image2;
  final String image3;
  final String image4;

  const CustomImages({
    Key? key,
    required this.image1,
    required this.image2,
    required this.image3,
    required this.image4,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        String selectedImage = image1;
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
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(selectedImage),
                    ),
                  ),
                ),
              ),
            ),
          ),
        );
      },
      child: Row(
        children: [
          _buildImageContainer(image1),
          _buildImageContainer(image2),
          _buildImageContainer(image3),
          _buildImageContainer(image4),
        ],
      ),
    );
  }

  Widget _buildImageContainer(String imagePath) {
    return Container(
      margin: const EdgeInsets.only(left: 10),
      decoration: BoxDecoration(
        border: Border.all(
          color: const Color(0xff495E57),
        ),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Image.asset(
        imagePath,
        width: 120,
        height: 120,
      ),
    );
  }
}
