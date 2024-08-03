/* import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:ge_reward_app/core/colors.dart';

class VehicleCardWidget extends StatelessWidget {
  final String make;
  final String model;
  final String plateNo;

  final String image;
  final int invoice;

  VehicleCardWidget({
    required this.make,
    required this.model,
    required this.plateNo,
    required this.image,
    required this.invoice,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.grey.withOpacity(.2),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.all(16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      make,
                      style: TextStyle(
                        color: primaryColor,
                        fontWeight: FontWeight.w700,
                        fontSize: 16,
                      ),
                    ),
                    SizedBox(height: 8),
                    Text(
                      model,
                      style: TextStyle(
                        color: gWhiteColor,
                        fontWeight: FontWeight.w400,
                        fontSize: 12,
                      ),
                    ),
                    SizedBox(height: 8),
                    Text(
                      'Plate No :' + plateNo,
                      style: TextStyle(
                        fontSize: 16,
                        color: gWhiteColor,
                      ),
                    ),
                    SizedBox(height: 8),
                    Text(
                      'Grand Total : AED ' + invoice.toString(),
                      style: TextStyle(color: gWhiteColor),
                    ),
                  ],
                ),
                Spacer(),
                Column(
                  children: [
                    SizedBox(
                        height: 30,
                        width: 30,
                        child: Image.asset("lib/assets/images/gificon.png")),
                    SizedBox(
                        height: 120,
                        width: 160,
                        child: Image.asset(
                          image,
                          fit: BoxFit.cover,
                        )),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
 */

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:ge_2/core/colors.dart';
import 'package:ge_2/screens/userscreens/wheelScreen.dart';
import 'package:badges/badges.dart' as badges;

class VehicleCardWidget extends StatelessWidget {
  final String make;
  final String model;
  final String plateNo;

  final String image;
  final int invoice;
  final bool status;

  VehicleCardWidget({
    required this.make,
    required this.model,
    required this.plateNo,
    required this.image,
    required this.invoice,
    required this.status,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        print('jjj');
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => spinWheelScreen()),
        );
      },
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: Card(
           
          color: Colors.grey.withOpacity(.2),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      make,
                      style: TextStyle(
                        color: primaryColor,
                        fontWeight: FontWeight.w700,
                        fontSize: 16,
                      ),
                    ),
                    SizedBox(height: 8),
                    Text(
                      model,
                      style: TextStyle(
                        color: gWhiteColor,
                        fontWeight: FontWeight.w400,
                        fontSize: 12,
                      ),
                    ),
                    SizedBox(height: 8),
                    Text(
                      'Plate No :' + plateNo,
                      style: TextStyle(
                        fontSize: 16,
                        color: gWhiteColor,
                      ),
                    ),
                    SizedBox(height: 8),
                    /* Text(
                      'Grand Total : AED ' + invoice.toString()+,
                      style: TextStyle(color: gWhiteColor),
                    ), */
        
                    status == true
                        ? Row(
                            children: [
                              Text(
                                'Grand Total : AED ' + invoice.toString(),
                                style: TextStyle(color: gWhiteColor),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Icon(
                                Icons.check_circle,
                                color: Colors.green,
                              )
                            ],
                          )
                        : Row(
                            children: [
                              Text(
                                'Grand Total : AED ' + invoice.toString(),
                                style: TextStyle(color: gWhiteColor),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Icon(Icons.timer_outlined, color: Colors.grey)
                            ],
                          )
                  ],
                ),
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 120),
                    child: GestureDetector(
                      onTap: () {},
                      child:
                       status == true ?
                       Container(
                          height: 30,
                          width: 30,
                          child: badges.Badge(
                            badgeContent: Text('1'),
                            badgeStyle: badges.BadgeStyle(badgeColor: primaryColor),
                            child: Image(
                                image:
                                    AssetImage("lib/assets/images/gificon.png")),
                          ))
                          :
                          Container(

                          )
                      
                      
                      
                    ),
                  ),
                  SizedBox(
                      height: 120,
                      width: 120,
                      child: Image.asset(
                        image,
                        fit: BoxFit.cover,
                      )),
                ],
              ),
              /* Positioned(
                top: 10,
                right: 10,
                left: double.infinity,
                bottom: double.infinity,
                  child: Image(image: AssetImage("lib/assets/images/gificon.png"))) */
            ],
          ),
        ),
      ),
    );
  }
}
