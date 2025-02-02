import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RoundedButtonTile extends StatelessWidget {
  String text;
  VoidCallback onTap;
  double height;
  bool isLocked;
  RoundedButtonTile({
    required this.text,
    required this.onTap,
    required this.height,
    this.isLocked = false,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: height,
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                text,
                style: GoogleFonts.notoSansArabic(
                  fontSize: 30,
                  color:
                      isLocked ? Colors.grey.shade400 : const Color(0xff5A5A5A),
                ),
              ),
              if (isLocked)
                const SizedBox(
                  width: 10,
                ),
              if (isLocked)
                Icon(
                  Icons.lock,
                  color: Colors.grey.shade400,
                ),
            ],
          ),
        ),
        //height: 150,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
            border: Border.all(color: Colors.grey)),
        margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
      ),
    );
  }
}

class RoundedButtonTileImage extends StatelessWidget {
  String text;
  VoidCallback onTap;
  double height;
  String imageAsset;
  RoundedButtonTileImage(
      {required this.text,
      required this.onTap,
      required this.height,
      required this.imageAsset});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: height,
        child: Center(
          child: Text(
            text,
            style: GoogleFonts.notoSansArabic(
              fontWeight: FontWeight.bold,
              fontSize: 35,
              color: const Color(
                0xff5A5A5A,
              ),

              //TextStyle(fontSize: 40, color: Colors.white,
            ),
          ),
        ),
        //height: 150,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(imageAsset), fit: BoxFit.cover),
            color: Colors.grey.shade800,
            borderRadius: BorderRadius.circular(20),
            border: Border.all(color: Colors.grey)),
        margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
      ),
    );
  }
}
