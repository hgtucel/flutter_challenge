import 'package:challenge_app/presentation/components/oval_button.dart';
import 'package:flutter/material.dart';

import '../constants.dart';

class DetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: size.height * .35,
        automaticallyImplyLeading: false,
        flexibleSpace: Container(
          height: size.height * .40,
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 40),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
            image: DecorationImage(
              image: NetworkImage(
                  "https://onlyibizaboatparty.com/img/clubberPack.jpg"),
              fit: BoxFit.cover,
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(30),
                child: Container(
                  padding: EdgeInsets.all(10),
                  color: Colors.white,
                  child: Text(
                    "VIP ONLY",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                ),
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Container(
                    padding: EdgeInsets.all(10),
                    color: Colors.white,
                    child: RichText(
                        textAlign: TextAlign.center,
                        text: TextSpan(
                            text: "14 \n",
                            style: TextStyle(color: Colors.black, fontSize: 16),
                            children: [
                              TextSpan(
                                  text: "FEB",
                                  style: TextStyle(fontWeight: FontWeight.bold))
                            ]))),
              )
            ],
          ),
        ),
        backgroundColor: Colors.transparent,
      ),
      body: buildContent(),
    );
  }

  Widget buildContent() {
    return Container(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        children: [
          buildTabBar(),
          buildHeading(),
          OvalButton(
            text: "Check-In",
            bgColor: Colors.transparent,
            borderColor: inputBorderColor,
            textColor: submitButtonColor,
            onPress: () {},
          ),
          SizedBox(
            height: 10,
          ),
          OvalButton(
            text: "Get Guaranteed Entry",
            bgColor: submitButtonColor,
            borderColor: submitButtonColor,
            textColor: Colors.white,
            onPress: () {},
          ),
        ],
      ),
    );
  }

  Widget buildTabBar() {
    return Container(
      height: 50,
      margin: EdgeInsets.only(bottom: 20),
      padding: EdgeInsets.only(left: 2, right: 2),
      decoration: BoxDecoration(
          color: tabBarBgColor,
          borderRadius: BorderRadius.circular(40),
          border: Border.all(width: 1, color: inputBorderColor)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(30),
            child: Container(
              padding: EdgeInsets.all(10),
              color: Colors.white,
              child: Text(
                "Overview",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
            ),
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(0),
            child: Container(
              padding: EdgeInsets.all(10),
              color: Colors.transparent,
              child: Text(
                "Photos",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
            ),
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(0),
            child: Container(
              padding: EdgeInsets.all(10),
              color: Colors.transparent,
              child: Text(
                "Guest list",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildHeading() {
    return Container(
      margin: EdgeInsets.only(bottom: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.only(bottom: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Grand Opening",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                Container(
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                      color: shadowColor,
                      borderRadius: BorderRadius.circular(10)),
                  child: Row(
                    children: [
                      Icon(
                        Icons.star_outlined,
                        color: Colors.amber,
                      ),
                      Text(
                        "4.8",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          Row(
            children: [
              Icon(
                Icons.location_on,
                color: submitButtonColor,
              ),
              SizedBox(
                width: 2,
              ),
              Text(
                "Main Stage - Ushuaia",
                style: TextStyle(
                    fontWeight: FontWeight.bold, color: labelTextColor),
              )
            ],
          ),
          Container(
            margin: EdgeInsets.only(top: 20),
            child: Row(
              children: [
                Align(
                  widthFactor: 0.6,
                  child: Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: NetworkImage(
                                "https://machinecurve.com/wp-content/uploads/2019/07/thispersondoesnotexist-1-1022x1024.jpg")),
                        borderRadius: BorderRadius.circular(50),
                        border: Border.all(width: 2, color: Colors.white)),
                  ),
                ),
                Align(
                  widthFactor: 0.6,
                  child: Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: NetworkImage(
                                "https://machinecurve.com/wp-content/uploads/2019/07/thispersondoesnotexist-1-1022x1024.jpg")),
                        borderRadius: BorderRadius.circular(50),
                        border: Border.all(width: 2, color: Colors.white)),
                  ),
                ),
                Align(
                  widthFactor: 0.6,
                  child: Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: NetworkImage(
                                "https://machinecurve.com/wp-content/uploads/2019/07/thispersondoesnotexist-1-1022x1024.jpg")),
                        borderRadius: BorderRadius.circular(50),
                        border: Border.all(width: 2, color: Colors.white)),
                  ),
                ),
                Align(
                  widthFactor: 0.6,
                  child: Container(
                    width: 48,
                    height: 48,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(50),
                        border: Border.all(width: 2, color: Colors.white)),
                    child: Center(
                      child: Text(
                        "+ 97",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: submitButtonColor,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
