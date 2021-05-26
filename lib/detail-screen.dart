import 'package:airbnb/payment-success.dart';
import 'package:airbnb/template/fonts-template.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:intl/intl.dart';
import 'model/hotel.dart';

final formatCurrency = new NumberFormat.simpleCurrency(locale: 'id_ID');

class DetailScreen extends StatelessWidget {
  final Hotel hotel;

  DetailScreen({@required this.hotel});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Stack(
            children: [
              Image.asset(hotel.imgAsset),
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
                      hotel.name,
                      style: detailPrimary,
                    ),
                    Text(hotel.location, style: detailSecondary)
                  ],
                ),
                Row(
                  children: [
                    SvgPicture.asset('images/icon_star.svg'),
                    Container(
                      padding: EdgeInsets.only(left: 8),
                      child: Text(
                        hotel.rating.toString(),
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
                hotel.description,
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
                    Text('${formatCurrency.format(hotel.price)}/night', style: detailTitleInfo)
                  ],
                ),
                ElevatedButton(
                  child: Text("RESERVE"),
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) {
                      return PaymentSuccess();
                    }));
                  },
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
