import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ge_2/screens/userscreens/widgets/bottomNavWidget.dart';

class claimedRewardPage extends StatelessWidget {
  const claimedRewardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.withOpacity(.2),
      bottomNavigationBar: bottomNavWidget(pageIndex:1,),
    );
  }
}