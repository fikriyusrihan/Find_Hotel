import 'package:flutter/material.dart';
import 'package:airbnb/template/fonts-template.dart';
import 'package:airbnb/detail-screen.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:airbnb/model/Hotel.dart';
import 'package:intl/intl.dart';

final formatCurrency = new NumberFormat.simpleCurrency(locale: 'id_ID');

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.fromLTRB(24.0, 0, 24.0, 0),
          child: SingleChildScrollView(
            physics: ScrollPhysics(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  child: Text(
                    'Stays in\nBandung City',
                    style: mainTitle,
                  ),
                  margin: EdgeInsets.only(bottom: 24, top: 32),
                ),
                ListView.builder(
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      final Hotel hotel = hotelList[index];
                      return InkWell(
                        child: Card(
                          child: Row(
                            children: [
                              Container(
                                height: 120,
                                width: 120,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage(hotel.imgAsset),
                                        fit: BoxFit.cover)),
                              ),
                              Padding(
                                padding: EdgeInsets.all(14.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                        margin: EdgeInsets.only(bottom: 16),
                                        child:
                                            Text(hotel.name, style: cardTitle)),
                                    Container(
                                      margin: EdgeInsets.only(bottom: 4),
                                      child: Text(
                                        hotel.location,
                                        style: cardContent,
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(bottom: 4),
                                      child: Row(
                                        children: [
                                          SvgPicture.asset(
                                              'images/icon_star.svg'),
                                          Container(
                                            padding: EdgeInsets.only(left: 8),
                                            child: Text(
                                              hotel.rating.toString(),
                                              style: cardRating,
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(bottom: 4),
                                      child: Text(
                                        '${formatCurrency.format(hotel.price)}/night',
                                        style: cardContent,
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return DetailScreen(hotel: hotel,);
                          }));
                        },
                      );
                    },
                    itemCount: hotelList.length),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
