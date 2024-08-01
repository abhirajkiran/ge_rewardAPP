import 'package:flutter/material.dart';
import 'package:ge_2/core/colors.dart';
import 'package:ge_2/screens/authentication/loginscreen.dart';


class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Image.asset(
          "lib/assets/images/ge_r1.jpg",
          fit: BoxFit.cover,
          height: double.infinity,
          width: double.infinity,
          alignment: Alignment.center,
        ),
        /*   Positioned(
          top: 10,
          left:120,
          child: Image.asset("lib/assets/images/gelogo.png"),height:30,width:50,), */
        Positioned(
            bottom: 30,
            left: 20,
            right: 20,
            child: Container(
                child: Column(
              children: [
                
                RichText(
                  text: TextSpan(
                      text: 'Claim Your Exciting ',
                      style: TextStyle(
                          fontSize: 30,
                          color: gWhiteColor,
                          fontWeight: FontWeight.bold),
                      children: [
                        TextSpan(
                          text: 'Gifts',
                          style: TextStyle(
                              fontSize: 30,
                              color: primaryColor,
                              fontWeight: FontWeight.bold),
                        ),
                        TextSpan(
                          text: ' Here',
                          style: TextStyle(
                              fontSize: 30,
                              color: gWhiteColor,
                              fontWeight: FontWeight.bold),
                        )
                      ]),
                ),
                Row(
                  children: [
                    Text(
                      'find and experience the emotions of\nour luxury service at low cost',
                      style: TextStyle(color: Colors.grey),
                    ),
                    Spacer(),
                    IconButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const LoginScreen()),
                        );
                      },
                      icon: Icon(
                        Icons.arrow_circle_right,
                        size: 35,
                      ),
                      color: primaryColor,
                      style: ButtonStyle(
                          shadowColor:
                              MaterialStatePropertyAll<Color>(gWhiteColor)),
                      //  hoverColor: primaryColor,
                    ),
                  ],
                )
              ],
            )))
      ]),
    );
  }
}
