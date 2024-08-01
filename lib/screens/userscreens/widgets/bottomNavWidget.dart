import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ge_2/core/colors.dart';
import 'package:ge_2/screens/userscreens/userHomeScreen.dart';

class bottomNavWidget extends StatefulWidget {
  const bottomNavWidget({super.key});

  @override
  State<bottomNavWidget> createState() => _bottomNavWidgetState();
}

class _bottomNavWidgetState extends State<bottomNavWidget> {
  int pageIndex = 0;
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
                   /*  Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => UserHomeScreen()),
                          ); */
                    setState(() {
                      pageIndex = 0;
                    });
                  },
                  icon: pageIndex == 0
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
                    
                    setState(() {
                      pageIndex = 1;
                       
                    });
                  },
                  icon: pageIndex == 1
                      ? const Icon(
                          Icons.work_rounded,
                          color:Colors.yellow,
                          size: 35,
                        )
                      : const Icon(
                          Icons.work_outline_outlined,
                          color: Colors.white,
                          size: 35,
                        ),
                ),
                /* IconButton(
                  enableFeedback: false,
                  onPressed: () {
                    setState(() {
                      pageIndex = 2;
                    });
                  },
                  icon: pageIndex == 2
                      ? const Icon(
                          Icons.widgets_rounded,
                          color:Colors.yellow,
                          size: 35,
                        )
                      : const Icon(
                          Icons.widgets_outlined,
                          color: Colors.white,
                          size: 35,
                        ),
                ) */
                /* IconButton(
                  enableFeedback: false,
                  onPressed: () {
                    setState(() {
                      pageIndex = 3;
                    });
                  },
                  icon: pageIndex == 3
                      ? const Icon(
                          Icons.person,
                          color: Colors.white,
                          size: 35,
                        )
                      : const Icon(
                          Icons.person_outline,
                          color: Colors.white,
                          size: 35,
                        ),
                ), */
              ],
            ),
          ),
        );
  }
}