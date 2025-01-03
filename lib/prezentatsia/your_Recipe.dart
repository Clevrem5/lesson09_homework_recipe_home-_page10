import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../utils/constants.dart';

class YourRecipes extends StatelessWidget {
  const YourRecipes({
    super.key,
    required this.image,
    required this.svg,
    required this.foodname,
    required this.count,
    required this.star,
    required this.clock,
    required this.min,
  });

  final String image, svg, foodname, count, star, clock, min;

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        ClipRRect(
          borderRadius: const BorderRadius.all(Radius.circular(14)),
          child: Image(
            image: AssetImage(image),
            width: 169,
            height: 162,
            fit: BoxFit.cover,
          ),
        ),
        Positioned(
          top: 8,
          right: 8,
          child: Container(
            height: 28,
            width: 28,
            decoration: const BoxDecoration(
              color: Color(0xFFFD5D69),
              shape: BoxShape.circle,
            ),
            child: Center(
              child: SvgPicture.asset(
                svg,
                width: 15,
                height: 15,
                colorFilter: const ColorFilter.mode(
                  Colors.white,
                  BlendMode.srcIn,
                ),
              ),
            ),
          ),
        ),
        Positioned(
          bottom: -25,
          left: 0,
          child: Container(
            width: 169,
            height: 49,
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(
                Radius.circular(14),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    foodname,
                    style: const TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      color: AppColors.backroundColor,
                    ),
                  ),
                  const SizedBox(height: 3),
                  Row(
                    children: [
                      const Text(
                        "5",
                        style:
                        TextStyle(color: Color(0xffEC888D), fontSize: 12),
                      ),
                      const SizedBox(width: 3),
                      SvgPicture.asset(
                        star,
                        width: 10,
                        height: 10,
                      ),
                      const SizedBox(width: 30),
                      SvgPicture.asset(
                        clock,
                        width: 10,
                        height: 10,
                      ),
                      const SizedBox(width: 4),
                      Text(
                        min,
                        style: const TextStyle(
                          fontSize: 12,
                          color: Color(0xffEC888D),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}