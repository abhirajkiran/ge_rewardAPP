import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:ge_2/core/colors.dart';
import 'package:ge_2/core/colors.dart';
import 'package:ge_2/screens/userscreens/widgets/bottomNavWidget.dart';
import 'package:ge_2/screens/userscreens/widgets/carcardWidget.dart';

class UserHomeScreen extends StatefulWidget {
  const UserHomeScreen({super.key});

  @override
  State<UserHomeScreen> createState() => _UserHomeScreenState();
}

class _UserHomeScreenState extends State<UserHomeScreen> {
  
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey.withOpacity(.2),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 15),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: CircleAvatar(
                      backgroundImage:
                          AssetImage("lib/assets/images/ge_r3.jpg"),
                    ),
                  ),
                  Spacer(),
                  Row(
                    children: [
                      Icon(
                        Icons.location_on_outlined,
                        color: gWhiteColor,
                        weight: 40,
                      ),
                      Text(
                        'Al Quoz,United Arab Emirates',
                        style: TextStyle(
                          color: gWhiteColor,
                        ),
                      )
                    ],
                  ),
                  Spacer(),
                  Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.clear_all_sharp,
                          color: gWhiteColor,
                        )),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Row(
                    children: [
                      RichText(
                        text: TextSpan(
                            text: 'Hello, ',
                            style: TextStyle(
                              fontSize: 25,
                              color: Colors.grey.withOpacity(.7),
                            ),
                            children: [
                              TextSpan(
                                text: 'John',
                                style: TextStyle(
                                  fontSize: 25,
                                  color: gWhiteColor,
                                ),
                              ),
                            ]),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Row(
                    children: [
                      Text(
                        'Exiting rewards are waiting for you',
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.grey,
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            SizedBox(
              height: 50,
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: carListWidget(),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
              child: Row(
                children: [
                  Text(
                    'Recent',
                    style: TextStyle(color: gWhiteColor, fontSize: 20),
                  ),
                  Spacer(),
                  Text(
                    'See All',
                    style: TextStyle(color: primaryColor),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  VehicleCardWidget(
                    make: "LAMBORGINI",
                    model: "HURACAN EVO",
                    invoice: 12000,
                    plateNo: "D276",
                    image: "lib/assets/images/lambo.png",
                    status: true,
                  ),
                  VehicleCardWidget(
                    make: "FERRARI",
                    model: "458 Italia",
                    invoice: 8000,
                    plateNo: "D6766",
                    image: "lib/assets/images/ferrari.png",
                    status: false,
                  ),
                  /*  VehicleCardWidget(
                      make: "FERRARI",
                      model: "458 Italia",
                      invoice: 8000,
                      plateNo: "D6766",
                      image: "lib/assets/images/ferrari.png"),
                  VehicleCardWidget(
                      make: "FERRARI",
                      model: "458 Italia",
                      invoice: 8000,
                      plateNo: "D6766",
                      image: "lib/assets/images/ferrari.png"), */
                ],
              ),
            ),
          ],
        ),
        bottomNavigationBar: bottomNavWidget(pageIndex: 0,)
      ),
    );
  }
}

class carListWidget extends StatelessWidget {
  const carListWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10),
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Container(
            child: Center(
                child: Text(
              'All',
              style: TextStyle(color: gBlackColor),
            )),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(10.0)),
              color: primaryColor.withOpacity(.7),
            ),
            height: 25,
            width: 100,
          ),
          SizedBox(
            width: 10,
          ),
          Container(
            child: Center(
                child: Text(
              'Ferrari',
              style: TextStyle(color: gWhiteColor),
            )),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(10.0)),
              color: gHomeGrey1,
            ),
            height: 20,
            width: 100,
          ),
          SizedBox(
            width: 10,
          ),
          Container(
            child: Center(
                child: Text(
              'BMW',
              style: TextStyle(color: gWhiteColor),
            )),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(10.0)),
              color: gHomeGrey1,
            ),
            height: 20,
            width: 100,
          ),
          SizedBox(
            width: 10,
          ),
          Container(
            child: Center(
                child: Text(
              'Ferrari',
              style: TextStyle(color: gWhiteColor),
            )),
            height: 20,
            width: 100,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(10.0)),
              color: gHomeGrey1,
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Container(
              child: Center(
                  child: Text(
                'Ferrari',
                style: TextStyle(color: gWhiteColor),
              )),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
                color: gHomeGrey1,
              ),
              height: 20,
              width: 100),
          SizedBox(
            width: 10,
          ),
        ],
      ),
    );
  }
}
