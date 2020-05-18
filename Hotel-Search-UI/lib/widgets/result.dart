import 'package:flutter/material.dart';
import 'package:hotel_search/styles/colors.dart';
import 'package:hotel_search/styles/texts.dart';

class Result extends StatelessWidget {
  Result({
    this.name,
    this.image,
    this.location,
    this.distance,
    this.cost,
    this.rating,
    this.reviewCount,
  });

  final String name;
  final String image;
  final String location;
  final int distance;
  final int cost;
  final int rating;

  final int reviewCount;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 20),
      child: SizedBox(
        height: 250,
        child: Card(
          elevation: 0,
          color: Colors.grey[100],
          child: Column(
            children: <Widget>[
              Expanded(
                flex: 7,
                child: Container(
                    height: 200,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                      image: AssetImage(image),
                      fit: BoxFit.cover,
                    ))),
              ),
              Expanded(
                flex: 3,
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 10,
                  ),
                  child: Row(
                    children: <Widget>[
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            name,
                            style: textStyles['hotelName'],
                          ),
                          Row(
                            children: <Widget>[
                              Text(
                                location,
                                style: textStyles['hotelInfo'],
                              ),
                              Icon(Icons.place,
                                  color: colorStyles['mainGreen'], size: 15),
                              Text(
                                distance.toString() + " km to city",
                                style: textStyles['hotelInfo'],
                              ),
                            ],
                          ),
                          Text(
                            reviewCount.toString() + " Reviews",
                            style: textStyles['hotelInfo'],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
