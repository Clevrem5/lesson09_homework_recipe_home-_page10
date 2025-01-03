import 'package:flutter/material.dart';
import 'package:recipehomepage_lesson09/prezentatsia/recently_added.dart';
import 'package:recipehomepage_lesson09/prezentatsia/top_chef.dart';
import 'package:recipehomepage_lesson09/prezentatsia/treding_recipe.dart';
import 'package:recipehomepage_lesson09/prezentatsia/your_Recipe.dart';
import '../utils/constants.dart';
import 'appbar.dart';
import 'bottom_navigation.dart';



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
                  height: 52,
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