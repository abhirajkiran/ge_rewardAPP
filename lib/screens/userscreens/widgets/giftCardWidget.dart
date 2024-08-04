import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:ge_2/core/colors.dart';
import 'package:ge_2/screens/userscreens/qrCodeScreen.dart';
import 'package:ge_2/screens/userscreens/userHomeScreen.dart';
import 'package:ge_2/screens/userscreens/wheelScreen.dart';
import 'package:badges/badges.dart' as badges;
import 'package:ge_2/screens/userscreens/widgets/alertScreenWidget.dart';

class giftCardWidget extends StatelessWidget {
  final String giftId;
  final String descriptionMain;
  final String descriptionSub;
  final String validity;

  final Widget image;

  final bool status;

  giftCardWidget({
    required this.status,
    required this.giftId,
    required this.descriptionMain,
    required this.validity,
    required this.image,
    required this.descriptionSub,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => qrCodeScreen(descriptionSub: descriptionSub,giftId: giftId,status: status,)),
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
                      descriptionMain,
                      style: TextStyle(
                        color: primaryColor,
                        fontWeight: FontWeight.w700,
                        fontSize: 16,
                      ),
                    ),
                    SizedBox(height: 8),
                    Text(
                      descriptionSub,
                      style: TextStyle(
                        color: gWhiteColor,
                        fontWeight: FontWeight.w400,
                        fontSize: 12,
                      ),
                    ),
                    SizedBox(height: 8),
                    Text(
                      'Valid Till :' + validity,
                      style: TextStyle(
                        fontSize: 16,
                        color: gWhiteColor,
                      ),
                    ),
                    SizedBox(height: 8),
                    status == true
                        ? Row(
                            children: [
                              Text(
                                'Status : Claimed ',
                                style: TextStyle(color: gWhiteColor),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Icon(
                                Icons.check_circle,
                                color: Colors.grey,
                              )
                            ],
                          )
                        : Row(
                            children: [
                              Text(
                                'Status : Available',
                                style: TextStyle(color: gWhiteColor),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Icon(Icons.timer_outlined, color: Colors.green)
                            ],
                          )
                  ],
                ),
              ),
              /* Column(
                children: [
                  Container(height: 120, width: 120, child: image),
                ],
              ), */
              GestureDetector(
                onTap: (){
                  Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => qrCodeScreen(descriptionSub: descriptionSub,giftId: giftId,status: status,)),
                          );
                },
                child: Column(
                  children: [
                    Container(height: 120, width: 120, child: image),
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
