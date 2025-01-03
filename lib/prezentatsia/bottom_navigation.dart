import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';


class BottomNavigation extends StatelessWidget {
  const BottomNavigation({
    super.key,
    required this.home,
    required this.category,
    required this.community,
    required this.profile,
    required this.paddingbottom,
    required this.widht,
    required this.height,
  });

  final String home, category, community, profile;
  final double widht, height, paddingbottom;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: paddingbottom),
      child: Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          width: widht, //281/56
          height: height,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(34),
            color: Color(0xFFFD5D69),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SvgPicture.asset(
                home,
                fit: BoxFit.cover,
                width: 27,
                height: 27,
              ),
              SvgPicture.asset(
                category,
                fit: BoxFit.cover,
                width: 27,
                height: 27,
              ),
              SvgPicture.asset(
                community,
                fit: BoxFit.cover,
                width: 27,
                height: 27,
              ),
              SvgPicture.asset(
                profile,
                fit: BoxFit.cover,
                width: 27,
                height: 27,
              ),
            ],
          ),
        ),
      ),
    );
  }
}