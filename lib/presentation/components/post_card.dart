import 'package:challenge_app/presentation/pages/detail_page.dart';
import 'package:flutter/material.dart';

import '../constants.dart';

class PostCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 30, right: 10),
      width: MediaQuery.of(context).size.width * 0.8,
      height: 350,
      decoration: BoxDecoration(
          color: inputBgColor,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
                color: shadowColor,
                blurRadius: 10,
                spreadRadius: 20,
                offset: Offset(20, 10)),
            BoxShadow(
                color: shadowColor,
                blurRadius: 17,
                spreadRadius: -10,
                offset: Offset(10, 17))
          ]),
      child: Column(
        children: [
          Stack(
            children: [
              Container(
                height: 250,
                decoration: BoxDecoration(
                    borderRadius:
                        BorderRadius.vertical(top: Radius.circular(10)),
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(
                            "https://onlyibizaboatparty.com/img/clubberPack.jpg"))),
              ),
              Container(
                margin: EdgeInsets.all(20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(30),
                      child: Container(
                        padding: EdgeInsets.all(10),
                        color: Colors.white,
                        child: Text(
                          "VIP ONLY",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16),
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
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 16),
                                  children: [
                                    TextSpan(
                                        text: "FEB",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold))
                                  ]))),
                    )
                  ],
                ),
              )
            ],
          ),
          Container(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.only(bottom: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextButton(
                        onPressed: () => Navigator.of(context).push(
                            MaterialPageRoute(
                                builder: (context) => DetailPage())),
                        child: Text(
                          "Grand Opening",
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        ),
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
                              border:
                                  Border.all(width: 2, color: Colors.white)),
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
                              border:
                                  Border.all(width: 2, color: Colors.white)),
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
                              border:
                                  Border.all(width: 2, color: Colors.white)),
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
                              border:
                                  Border.all(width: 2, color: Colors.white)),
                          child: Center(
                            child: Text(
                              "+ 124",
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
          )
        ],
      ),
    );
  }
}
