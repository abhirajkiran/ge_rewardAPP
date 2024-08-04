import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ge_2/core/colors.dart';
import 'package:ge_2/screens/userscreens/claimedRewardScreen.dart';
import 'package:ge_2/screens/userscreens/userHomeScreen.dart';

class bottomNavWidget extends StatefulWidget {
   bottomNavWidget({super.key, required this.pageIndex});
   int pageIndex;
  @override
  State<bottomNavWidget> createState() => _bottomNavWidgetState();
}

class _bottomNavWidgetState extends State<bottomNavWidget> {
  
  @override
  Widget build(BuildContext context) {
    return Padding(
          padding: const EdgeInsets.only(left: 30,right: 30,bottom: 15),
          child: Container(
            height: 60,
            decoration: BoxDecoration(
              color: gcardGrey,
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20)
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IconButton(
                  enableFeedback: false,
                  onPressed: () {
                    Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => UserHomeScreen()),
                          );
                    setState(() {
                      widget.pageIndex = 0;
                    });
                  },
                  icon:widget.pageIndex == 0
                      ? const Icon(
                          Icons.home_filled,
                          color: Colors.yellow,
                          size: 35,
                        )
                      : const Icon(
                          Icons.home_outlined,
                          color: Colors.white,
                          size: 35,
                        ),
                ),
                IconButton(
                  enableFeedback: false,
                  onPressed: () {
                   /*  Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => claimedRewardPage()),
                          ); */
                    setState(() {
                      widget.pageIndex = 1;
                       
                    });
                  },
                  icon: widget.pageIndex == 1
                      ? const Icon(
                          Icons.card_giftcard,
                          color:Colors.yellow,
                          size: 35,
                        )
                      : const Icon(
                          Icons.card_giftcard_outlined,
                          color: Colors.white,
                          size: 35,
                        ),
                ),
                
              ],
            ),
          ),
        );
  }
}