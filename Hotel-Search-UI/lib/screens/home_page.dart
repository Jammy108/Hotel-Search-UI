import 'package:flutter/material.dart';
import 'package:hotel_search/styles/texts.dart';
import 'package:hotel_search/styles/colors.dart';
import 'package:hotel_search/widgets/result.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60.0),
        child: AppBar(
          bottomOpacity: 0.0,
          elevation: 0.0,
          centerTitle: true,
          backgroundColor: Colors.white,
          title: Text(
            "Explore",
            style: textStyles['appBar'],
          ),
          leading: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.arrow_back,
              color: Colors.grey[800],
            ),
          ),
          actions: <Widget>[
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.add,
                color: Colors.grey[800],
                size: 28,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.place,
                color: Colors.grey[800],
                size: 28,
              ),
            ),
          ],
        ),
      ),
      body: Column(
        children: <Widget>[
          Container(
            color: colorStyles['greyBackground'],
            child: Padding(
              padding: EdgeInsets.all(20),
              child: Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.all(
                              const Radius.circular(30.0),
                            ),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.3),
                                spreadRadius: 3,
                                blurRadius: 10,
                              ),
                            ],
                          ),
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: "London",
                              contentPadding: EdgeInsets.only(
                                left: 20,
                                bottom: 15,
                                top: 15,
                                right: 20,
                              ),
                              border: InputBorder.none,
                              focusedBorder: InputBorder.none,
                              enabledBorder: InputBorder.none,
                              errorBorder: InputBorder.none,
                              disabledBorder: InputBorder.none,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 10),
                        child: Container(
                          decoration: BoxDecoration(
                            color: colorStyles['mainGreen'],
                            shape: BoxShape.circle,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 3,
                                blurRadius: 10,
                              ),
                            ],
                          ),
                          child: IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.search, color: Colors.white),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: 20,
                      left: 10,
                      right: 10,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              "Choose Date",
                              style: textStyles['dataHeader'],
                            ),
                            Text(
                              "12 Dec - 22 Dec",
                              style: textStyles['data'],
                            )
                          ],
                        ),
                        Container(
                          width: 1,
                          height: 30,
                          color: Colors.grey[600],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              "Number Of Rooms",
                              style: textStyles['dataHeader'],
                            ),
                            Text(
                              "1 Room - 2 Adults",
                              style: textStyles['data'],
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 5, right: 20, left: 20),
            child: Row(
              children: <Widget>[
                Text("530 hotels found"),
                Spacer(),
                Text("Filters"),
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.sort,
                    color: Colors.grey[800],
                  ),
                )
              ],
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                child: ListView(
                  children: <Widget>[
                    Result(
                      name: "Grand Royal Hotel",
                      image: "assets/images/1.jpg",
                      location: "Paris, France",
                      distance: 2,
                      cost: 180,
                      reviewCount: 80,
                    ),
                    Result(
                      name: "Mandarin Oriental",
                      image: "assets/images/2.jpg",
                      location: "Paris, France",
                      distance: 3,
                      cost: 250,
                      reviewCount: 55,
                    ),
                    Result(
                      name: "Solar Resort & Spa",
                      image: "assets/images/3.jpg",
                      location: "Paris, France",
                      distance: 1,
                      cost: 150,
                      reviewCount: 93,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
