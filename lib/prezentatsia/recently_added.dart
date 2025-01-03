
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../utils/constants.dart';




class RecentlyAdded extends StatelessWidget {
  const RecentlyAdded({
    super.key,
    required this.image,
    required this.title,
    required this.txt,
  });

  final String image, title, txt;

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        SizedBox(
          width: 164,
          height: 153,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(14),
            child: Image(
              image: AssetImage(
                image,
              ),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Positioned(
          bottom: -69,
          left: 8,
          child: Container(
            width: 150,
            height: 76,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(14),
                bottomRight: Radius.circular(14),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.only(
                left: 15,
                top: 5,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 10,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    txt,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 8,
                      fontWeight: FontWeight.w200,
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "4",
                        style: TextStyle(
                          color: AppColors.iconCOncolor2,
                          fontSize: 10,
                        ),
                      ),
                      SizedBox(
                        width: 3,
                      ),
                      SvgPicture.asset(
                        "assets/svg/star.svg",
                        width: 10,
                        height: 10,
                        fit: BoxFit.cover,
                      ),
                      SizedBox(
                        width: 50,
                      ),
                      SvgPicture.asset(
                        "assets/svg/clock.svg",
                        width: 10,
                        height: 10,
                        fit: BoxFit.cover,
                      ),
                      SizedBox(
                        width: 3,
                      ),
                      Text(
                        "30 min",
                        style: TextStyle(
                          color: AppColors.iconCOncolor2,
                          fontSize: 10,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}