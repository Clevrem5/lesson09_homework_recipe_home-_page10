
import 'package:flutter/material.dart';

import '../utils/constants.dart';

class TopChefs extends StatelessWidget {
  const TopChefs({super.key, required this.image, required this.chef});

  final String image, chef;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image(
          image: AssetImage(image),
          width: 83,
          height: 74,
        ),
        Text(
          chef,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 15,
          ),
        ),
      ],
    );
  }
}

class TopChefText extends StatelessWidget {
  const TopChefText({super.key, required this.chefmaintext});

  final String chefmaintext;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          chefmaintext,
          style: TextStyle(
            color: AppColors.iconCOncolor,
            fontSize: 20,
          ),
        ),
      ],
    );
  }
}