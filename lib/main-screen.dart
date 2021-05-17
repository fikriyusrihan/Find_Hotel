import 'package:flutter/material.dart';
import 'package:airbnb/template/fonts-template.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                child: Text(
                  'Stays in\nBandung City',
                  style: mainTitle,
                ),
                margin: EdgeInsets.only(bottom: 24),
              ),
              Card(
                child: Row(
                  children: [
                    Container(
                      height: 120,
                      width: 120,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('images/gca2_apartment.jpg'),
                              fit: BoxFit.cover)),
                    ),
                    Padding(
                      padding: EdgeInsets.all(14.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                              margin: EdgeInsets.only(bottom: 16),
                              child: Text('GCA2 Apartment', style: cardTitle)),
                          Container(
                            margin: EdgeInsets.only(bottom: 4),
                            child: Text(
                              'Cidadap, Bandung, Jawa Barat',
                              style: cardContent,
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(bottom: 4),
                            child: Row(
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
                          ),
                          Container(
                            margin: EdgeInsets.only(bottom: 4),
                            child: Text(
                              'Rp1.200.000/night',
                              style: cardContent,
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class SearchBar extends StatefulWidget {
  @override
  _SearchBarState createState() => _SearchBarState();
}

class _SearchBarState extends State<SearchBar> {
  String _search = '';

  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: (String value) {
        setState(() {
          _search = value;
        });
      },
    );
  }
}
