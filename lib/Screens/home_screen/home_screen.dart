import 'package:clan_camp_yellow/Screens/friends_screen.dart';
import 'package:clan_camp_yellow/Screens/home_screen/Components/clan_discussions.dart';
import 'package:clan_camp_yellow/Screens/leaderboard_screen.dart';
import 'package:clan_camp_yellow/Screens/profile_screen.dart';
import 'package:flutter/material.dart';

import '../star_screen.dart';
import 'Components/achievements.dart';
import 'Components/clan_activities.dart';
import 'Components/clan_members.dart';
import 'Components/divider.dart';
import 'Components/featured_performances.dart';
import 'Components/heading.dart';
import 'Components/image.dart';
import 'Components/see_more_button.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0;
  void onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: DefaultTabController(
        initialIndex: 0,
        length: 5,
        child: Scaffold(
          //backgroundColor: Colors.black,
          body: TabBarView(
            children: [
              Padding(
                padding: const EdgeInsets.all(16),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 50),
                      const MainImage(),
                      const MyDivider(),
                      const Heading(text: "Achievements"),
                      const Achievements(),
                      const MyDivider(),
                      const Heading(text: "Past featured performances"),
                      const SizedBox(height: 20),
                      const FeaturedPerformances(
                        image: "assets/person1.jpg",
                        title: "Priya in International Debating League",
                      ),
                      const FeaturedPerformances(
                        image: "assets/person2.jpg",
                        title: "Akshay in Global Quizzing finals",
                      ),
                      SeeMoreButton(onPress: () {}),
                      const MyDivider(),
                      const Heading(text: "Live Clan Activities on Platform"),
                      const SizedBox(height: 20),
                      const ClanActivities(title: "Live trading\nchampionship"),
                      const ClanActivities(title: "Treasure hunt"),
                      SeeMoreButton(onPress: () {}),
                      const MyDivider(),
                      const Heading(text: "Clan discussions"),
                      const ClanDiscussions(
                        title: "General thread:",
                        subtitle: "15 unread messages",
                      ),
                      const ClanDiscussions(
                        title:
                            "(live) Anyone enthu for trading league championship can contact me.",
                        subtitle: "10 unread messages",
                      ),
                      const ClanDiscussions(
                        title:
                            "(live) Anyone enthu for trading league championship can contact me.",
                        subtitle: "10 unread messages",
                      ),
                      const SizedBox(height: 20),
                      SeeMoreButton(
                        onPress: () {},
                      ),
                      const MyDivider(),
                      const Heading(text: "Clan members"),
                      const SizedBox(height: 20),
                      const ClanMembers(
                        image: "assets/person1.jpg",
                        title: "Lorem Ipsum - Clan Head",
                      ),
                      const ClanMembers(
                        image: "assets/person2.jpg",
                        title: "Lorem Ipsum - Debating Sensei",
                      ),
                      SeeMoreButton(onPress: () {}),
                    ],
                  ),
                ),
              ),
              const StarScreen(),
              const LeaderBoardScreen(),
              const FriendsScreen(),
              const ProfileScreen()
            ],
          ),
          bottomNavigationBar: Padding(
            padding: const EdgeInsets.all(8.0),
            child: TabBar(
              indicator: const BoxDecoration(),
              labelColor: Colors.pink.shade300,
              unselectedLabelColor: Colors.white,
              padding: const EdgeInsets.all(8.0),
              tabs: const [
                Icon(
                  Icons.home_outlined,
                  size: 30,
                ),
                Icon(
                  Icons.star_border,
                  size: 30,
                ),
                Icon(
                  Icons.leaderboard_outlined,
                  size: 30,
                ),
                Icon(
                  Icons.people_alt_outlined,
                  size: 30,
                ),
                Icon(
                  Icons.person,
                  size: 30,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
