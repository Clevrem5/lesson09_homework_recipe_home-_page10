import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';


class TrendingRecipeSelf extends StatelessWidget {
  const TrendingRecipeSelf({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(
        color: Color(0xFFFD5D69),
        fontSize: 18,
      ),
    );
  }
}

class TrendingtextImage extends StatelessWidget {
  const TrendingtextImage({
    super.key,
    required this.image,
    required this.svg,
    required this.bigtxt,
    required this.smalltxt,
  });

  final String image;
  final String svg;
  final String bigtxt;
  final String smalltxt;

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        SizedBox(
          width: 358,
          height: 143,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(14),
            child: Image.asset(
              image,
              fit: BoxFit.cover,
            ),
          ),
        ),
        Positioned(
          top: 7,
          right: 8,
          child: Container(
            width: 28,
            height: 28,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(14),
              color: const Color(0xffFFC6C9),
            ),
            child: Center(
              child: SvgPicture.asset(
                svg,
                width: 16,
                height: 15,
              ),
            ),
          ),
        ),
        Positioned(
          bottom: -50,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Container(
              width: 338,
              height: 49,
              decoration: const BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(14),
                  bottomLeft: Radius.circular(14),
                ),
                border: Border.symmetric(
                  vertical: BorderSide(
                    color: Color(0xffEC888D),
                    width: 1,
                  ),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 1),
                        child: Text(
                          bigtxt,
                          style: const TextStyle(
                            fontSize: 13,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 15,
                        ),
                        child: Text(
                          smalltxt,
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 10,
                          ),
                        ),
                      )
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
