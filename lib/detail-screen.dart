import 'package:airbnb/template/fonts-template.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DetailScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Stack(
            children: [
              Image.asset('images/gca2_apartment.jpg'),
              SafeArea(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.white,
                        child: IconButton(
                          icon: Icon(
                            Icons.arrow_back,
                            color: Colors.black,
                          ),
                          onPressed: () {
                            Navigator.pop(context);
                          },
                        ),
                      ),
                      FavoriteButton(),
                    ],
                  ),
                ),
              )
            ],
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(24.0, 16.0, 24.0, 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "GCA2 Apartment",
                      style: detailPrimary,
                    ),
                    Text("Cidadap, Bandung, Jawa Barat", style: detailSecondary)
                  ],
                ),
                Row(
                  children: [
                    SvgPicture.asset('images/icon_star.svg'),
                    Container(
                      padding: EdgeInsets.only(left: 8),
                      child: Text(
                        '4.8',
                        style: cardRating,
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
          Padding(
              padding: EdgeInsets.fromLTRB(24.0, 16.0, 24.0, 16.0),
              child: Text(
                "Enjoy your journey in cozy unit at Gateway Pasteur Apartment the nearest from Pasteur Toll road, 5’ from Husein Sastranegara international Airport, Nice room with newest interior fully furnished, 1 Bedroom, sofa and AC, TV Cable with home theater. Kitchen Set, refrigerator for your meals. Clean and tidy bathroom with Water Heater.",
                style: detailDescription,
              )),
          Padding(
            padding: EdgeInsets.fromLTRB(24.0, 32.0, 24.0, 16.0),
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(bottom: 24.0),
                  child: Row(
                    children: [
                      SvgPicture.asset('images/home.svg'),
                      Padding(
                        padding: EdgeInsets.only(left: 24.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Entire Home",
                              style: detailTitleInfo,
                            ),
                            Text(
                              "You'll have the apartment to your self",
                              style: detailSecondary,
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 24.0),
                  child: Row(
                    children: [
                      SvgPicture.asset('images/map-pin.svg'),
                      Padding(
                        padding: EdgeInsets.only(left: 24.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Great Location",
                              style: detailTitleInfo,
                            ),
                            Text(
                              "95% of recent guest gave 5-star rating",
                              style: detailSecondary,
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 24.0),
                  child: Row(
                    children: [
                      SvgPicture.asset('images/book.svg'),
                      Padding(
                        padding: EdgeInsets.only(left: 24.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "House Rules",
                              style: detailTitleInfo,
                            ),
                            Text(
                              "The host doesn't allow pets",
                              style: detailSecondary,
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(24.0, 32.0, 24.0, 16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Price",
                      style: TextStyle(fontSize: 16.0),
                    ),
                    Text("Rp1.200.000/night", style: detailTitleInfo)
                  ],
                ),
                ElevatedButton(
                  child: Text("RESERVE"),
                  onPressed: () {},
                  style: buttonStyle,
                ),
              ],
            ),
          )
        ],
      ),
    ));
  }
}

class FavoriteButton extends StatefulWidget {
  @override
  _FavoriteButtonState createState() => _FavoriteButtonState();
}

class _FavoriteButtonState extends State<FavoriteButton> {
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: Colors.white,
      child: IconButton(
        icon: Icon(
          isFavorite ? Icons.favorite : Icons.favorite_border,
          color: Colors.black,
        ),
        onPressed: () {
          setState(() {
            isFavorite = !isFavorite;
          });
        },
      ),
    );
  }
}
