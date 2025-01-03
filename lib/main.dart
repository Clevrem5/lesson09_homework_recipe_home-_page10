import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:recipehomepage_lesson09/utils/constants.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePageTen(),
    );
  }
}

class HomePageTen extends StatefulWidget {
  const HomePageTen({super.key});

  @override
  State<HomePageTen> createState() => _HomePageTenState();
}

class _HomePageTenState extends State<HomePageTen> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      extendBody: true,
      backgroundColor: AppColors.backroundColor,
      appBar: AppBar(
        backgroundColor: AppColors.backroundColor,
        title: const Padding(
          // Appbbar chap tomon qismi
          padding: EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Hi! Bekzod",
                style: TextStyle(
                  color: Color(0xFFFD5D69),
                  fontWeight: FontWeight.w400,
                  fontSize: 25.31,
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 10),
                child: Text(
                  "What are you cooking today",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
                    fontSize: 13.45,
                  ),
                ),
              ),
            ], // children
          ),
        ),
        actions: const [
          // Appbar o'ng tomon qismi
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              children: [
                AppbarActionsItems(
                    image: "assets/svg/notification.svg",
                    widht: 13,
                    height: 18),
                SizedBox(
                  width: 5,
                ),
                AppbarActionsItems(
                    image: "assets/svg/search.svg", widht: 14, height: 19),
              ], // children
            ),
          ),
        ], //actions
        bottom: const AppBarBottom(), // bottom
      ),
      body: ListView(
        padding: const EdgeInsets.only(bottom: 150),
        children: [
          Padding(
            // Trending Recipe
            padding: const EdgeInsets.only(
              left: 28,
              top: 115,
              right: 28,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const TrendingRecipeSelf(text: "Trending Recipe"),
                const TrendingtextImage(
                  image: "assets/salami.png",
                  svg: "assets/svg/heart.svg",
                  bigtxt: "Salami and cheese pizza",
                  smalltxt: "This is a quick overview of the ingredients...",
                ),
                const SizedBox(
                  height: 60,
                ),
                Container(
                  width: double.infinity,
                  height: 255,
                  decoration: BoxDecoration(
                    color: AppColors.iconCOncolor,
                    borderRadius: BorderRadius.circular(14),
                  ),
                  child: const Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 18, top: 10),
                        child: Text(
                          "Your Recipes",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                          ),
                        ),
                      ),
                      Padding(
                        // Your Recipe
                        padding: EdgeInsets.all(10.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            YourRecipes(
                                image: "assets/chicken_burger.png",
                                svg: "assets/svg/heart.svg",
                                foodname: "Chicken Burger",
                                count: "5",
                                star: "assets/svg/star.svg",
                                clock: "assets/svg/clock.svg",
                                min: "15 minute"),
                            SizedBox(width: 10),
                            YourRecipes(
                                image: "assets/tiramisu.png",
                                svg: "assets/svg/heart.svg",
                                foodname: "Tiramisu",
                                count: "5",
                                star: "assets/svg/star.svg",
                                clock: "assets/svg/clock.svg",
                                min: "15 minute"),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                const TopChefText(chefmaintext: "Top Chef"),
                const SizedBox(
                  height: 15,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TopChefs(
                      image: "assets/joseph.png",
                      chef: "Joseph",
                    ),
                    TopChefs(
                      image: "assets/andrew.png",
                      chef: "Andrew",
                    ),
                    TopChefs(
                      image: "assets/emily.png",
                      chef: "Emily",
                    ),
                    TopChefs(
                      image: "assets/jessico.png",
                      chef: "Jessico",
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                SizedBox(
                  width: 120,
                  height: 20,
                  child: Text(
                    "Resently Added",
                    style: TextStyle(
                      color: AppColors.iconCOncolor,
                    ),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    RecentlyAdded(
                      image: "assets/lunch.png",
                      title: "Lemonade",
                      txt: "Acidic and refreshing",
                    ),
                    RecentlyAdded(
                      image: "assets/lemonade_two.png",
                      title: "Lemonade",
                      txt: "Acidic and refreshing",
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: const BottomNavigation(
        home: "assets/svg/home.svg",
        category: "assets/svg/categories.svg",
        community: "assets/svg/community.svg",
        profile: "assets/svg/profile.svg",
        paddingbottom: 30,
        widht: 281,
        height: 56,
      ),
    );
  } //widget
} // stateful

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
          style: const TextStyle(
            color: AppColors.iconCOncolor,
            fontSize: 20,
          ),
        ),
      ],
    );
  }
}

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

//823   jami: 825qatorga tushdi!!
