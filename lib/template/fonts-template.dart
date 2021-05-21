import 'dart:ui';

import 'package:flutter/material.dart';

var mainTitle = TextStyle(
    fontFamily: 'Montserrat',
    fontSize: 24.0,
    fontWeight: FontWeight.bold,
    color: Color.fromRGBO(13, 36, 64, 1));

var cardTitle = TextStyle(
    fontFamily: 'Work Sans',
    fontSize: 18.0,
    fontWeight: FontWeight.w600,
    color: Color.fromRGBO(13, 36, 64, 1));

var cardContent = TextStyle(
    fontFamily: 'Work Sans',
    fontSize: 14.0,
    color: Color.fromRGBO(13, 36, 64, 1));

var cardRating = TextStyle(
    fontFamily: 'Work Sans',
    fontSize: 14.0,
    color: Color.fromRGBO(235, 174, 70, 1));

var detailPrimary = TextStyle(
    fontFamily: 'Work Sans',
    fontSize: 28.0,
    color: Color.fromRGBO(13, 36, 64, 1),
    fontWeight: FontWeight.w600);

var detailSecondary = TextStyle(
    fontFamily: 'Work Sans',
    fontSize: 14.0,
    color: Color.fromRGBO(13, 36, 64, 1));

var detailDescription = TextStyle(
    fontFamily: 'Work Sans',
    fontSize: 16.0,
    color: Color.fromRGBO(13, 36, 64, 1));

var detailTitleInfo = TextStyle(
    fontFamily: 'Work Sans',
    fontSize: 18.0,
    color: Color.fromRGBO(13, 36, 64, 1),
    fontWeight: FontWeight.w600);

var buttonStyle = ElevatedButton.styleFrom(
    primary: Color.fromRGBO(13, 36, 64, 1),
    textStyle: TextStyle(fontWeight: FontWeight.w600, letterSpacing: 2),
    padding: EdgeInsets.fromLTRB(32.0, 16.0, 32.0, 16.0),
    shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(80))));
