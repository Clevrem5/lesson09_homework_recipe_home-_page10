import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';



class AppbarActionsItems extends StatelessWidget {
  const AppbarActionsItems(
      {super.key,
        required this.image,
        required this.widht,
        required this.height});

  final String image;
  final double widht, height;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 28,
      height: 28,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(14),
        color: const Color(0xffFFC6C9),
      ),
      child: Center(
        child: IconButton(
          icon: SvgPicture.asset(
            image,
            width: widht,
            height: height,
            fit: BoxFit.values.last,
          ),
          onPressed: () {},
        ),
      ),
    );
  }
}

//
class AppBarBottom extends StatelessWidget implements PreferredSizeWidget {
  const AppBarBottom({super.key});

  @override
  Size get preferredSize => const Size(double.infinity, 40);

  static List<Widget> items = [
    Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Container(
        width: 81,
        height: 25,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(18),
          color: const Color(0xffFD5D69),
        ),
        child: const Center(
          child: Text(
            "Breakfast",
            style: TextStyle(
              color: Colors.white,
              fontSize: 14,
            ),
          ),
        ),
      ),
    ),
    const Text(
      "Lunch",
      style: TextStyle(
        color: Color(0xFFFD5D69),
        fontSize: 16,
      ),
    ),
    const Text(
      "Dinner",
      style: TextStyle(
        color: Color(0xFFFD5D69),
        fontSize: 16,
      ),
    ),
    const Text(
      "Vegan",
      style: TextStyle(
        color: Color(0xFFFD5D69),
        fontSize: 16,
      ),
    ),
    const Text(
      "Drinks",
      style: TextStyle(
        color: Color(0xFFFD5D69),
        fontSize: 16,
      ),
    ),
    const Text(
      "Milk",
      style: TextStyle(
        color: Color(0xFFFD5D69),
        fontSize: 16,
      ),
    ),
    const Text(
      "Milk",
      style: TextStyle(
        color: Color(0xFFFD5D69),
        fontSize: 16,
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 25,
      width: double.infinity,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => items[index],
        separatorBuilder: (context, index) {
          if (index == 0) {
            return const SizedBox(width: 40);
          } else if (index == items.length + 5) {
            return const SizedBox(width: 40);
          } else {
            return const SizedBox(width: 40);
          }
        },
        itemCount: items.length,
      ),
    );
  }
}
