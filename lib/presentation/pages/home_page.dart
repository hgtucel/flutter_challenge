import 'package:challenge_app/presentation/components/bottom_nav_item.dart';
import 'package:challenge_app/presentation/components/post_card.dart';
import 'package:challenge_app/presentation/constants.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: buildContent(),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
            color: backgroundColor,
            border: Border(
                top: BorderSide(
              color: inputBorderColor,
              width: 2,
            ))),
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        height: 75,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            BottomNavItem(
              title: "Explore",
              icon: Icons.explore,
              onTap: () {},
              isActive: false,
            ),
            BottomNavItem(
              title: "For you",
              icon: Icons.star,
              onTap: () {},
              isActive: true,
            ),
            BottomNavItem(
              title: "Wallet",
              icon: Icons.wallet_giftcard,
              onTap: () {},
              isActive: false,
            ),
            BottomNavItem(
              title: "Profile",
              icon: Icons.person,
              onTap: () {},
              isActive: false,
            ),
          ],
        ),
      ),
      /*bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "Explore",
              backgroundColor: backgroundColor),
          BottomNavigationBarItem(
              icon: Icon(Icons.star),
              label: "For you",
              backgroundColor: backgroundColor),
          BottomNavigationBarItem(
              icon: Icon(Icons.wallet_giftcard), label: "Wallet"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile")
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        unselectedItemColor: labelTextColor,
        selectedItemColor: submitButtonColor,
      ),*/
    );
  }

  Widget buildContent() {
    return SafeArea(
      child: Container(
        width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.all(20),
        child: Container(
          width: MediaQuery.of(context).size.width,
          child: ListView(
            children: [
              Text(
                "Events you might like",
                style: TextStyle(
                    fontSize: 24, fontWeight: FontWeight.bold, height: 5),
              ),
              Text("Because you've attended Techo Bunker"),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 500,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemCount: 3,
                    itemBuilder: (context, index) {
                      return PostCard();
                    }),
              )
            ],
          ),
        ),
      ),
    );
  }
}
