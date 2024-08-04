import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ge_2/screens/userscreens/widgets/bottomNavWidget.dart';
import 'package:ge_2/screens/userscreens/widgets/giftCardWidget.dart';

class claimedRewardPage extends StatelessWidget {


  final String giftId;
  final String descriptionMain;
  final String descriptionSub;
  final String validity;

  final Widget image;
  
  final bool status;
  const claimedRewardPage({super.key, required this.giftId, required this.descriptionMain, required this.descriptionSub, required this.validity, required this.image, required this.status});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.withOpacity(.2),
      bottomNavigationBar: bottomNavWidget(pageIndex:1,),
      body:Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            giftCardWidget(status: status, giftId: giftId, descriptionMain: descriptionMain, validity: validity, image: image, descriptionSub: descriptionSub)
          ],
        ),
      ) ,

    );
  }
}