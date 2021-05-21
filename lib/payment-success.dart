import 'package:flutter/widgets.dart';
import 'package:airbnb/main-screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:airbnb/template/fonts-template.dart';

class PaymentSuccess extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              child: SvgPicture.asset('images/wallet-illustration.svg'),
              margin: EdgeInsets.only(bottom: 32),
            ),
            Container(
              child: Text(
                "Payment Success",
                style: mainTitle,
              ),
              margin: EdgeInsets.only(bottom: 16),
            ),
            Container(
              child: Text(
                "Your payment was successful!\nPlease check your email for your e-ticket.",
                style: detailDescription,
                textAlign: TextAlign.center,
              ),
              margin: EdgeInsets.only(bottom: 64),
            ),
            ElevatedButton(
              child: Text("BACK TO HOME"),
              style: buttonStyle,
              onPressed: () {
                Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(builder: (context) => MainScreen()),
                    ModalRoute.withName('/'));
              },
            )
          ],
        ),
      ),
    );
  }
}
