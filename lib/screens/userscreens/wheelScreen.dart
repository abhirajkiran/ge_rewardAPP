import 'package:flutter/material.dart';
import 'package:flutter_fortune_wheel/flutter_fortune_wheel.dart';
import 'package:ge_2/core/colors.dart';
import 'package:ge_2/screens/userscreens/claimedRewardScreen.dart';
import 'package:ge_2/screens/userscreens/userHomeScreen.dart';
import 'package:ge_2/screens/userscreens/widgets/alertScreenWidget.dart';
import 'package:ge_2/screens/userscreens/widgets/bottomNavWidget.dart';
import 'package:ge_2/screens/userscreens/widgets/bottomNavWidget_1.dart';
import 'package:rxdart/rxdart.dart';
import 'dart:math';

class spinWheelScreen extends StatefulWidget {
  const spinWheelScreen({Key? key}) : super(key: key);

  @override
  State<spinWheelScreen> createState() => _spinWheelScreenState();
}

class _spinWheelScreenState extends State<spinWheelScreen> {
  final selected = BehaviorSubject<int>();
  int spinCount = 1;
  late String rewards;

  List<Widget> items = [
    Image.asset('lib/assets/images/70per.png'),
    Image.asset('lib/assets/images/30perc.png'),
    Image.asset('lib/assets/images/70per.png'),
    Image.asset('lib/assets/images/50perc.png'),
    Image.asset('lib/assets/images/70per.png'),
    Image.asset('lib/assets/images/service.png')
  ];

  List<String> items1 = [
    '70% Discount On Your Next Periodic Service',
    '30% Discount On Your Next Periodic Service',
    '70% Discount On Your Next Periodic Service',
    '50% Discount On Your Next Periodic Service',
    '70% Discount On Your Next Periodic Service',
    'Free Next Periodic Service',
  ];
  static const _chars = 'AaBbCcDdEeFfGgHhIiJjKkLlMmNnOoPpQqRrSsTtUuVvWwXxYyZz1234567890';
Random _rnd = Random();



  @override
  void dispose() {
    selected.close();
    super.dispose();
  }

  

  @override
  Widget build(BuildContext context) {
    String getRandomString(int length) => String.fromCharCodes(Iterable.generate(
    length, (_) => _chars.codeUnitAt(_rnd.nextInt(_chars.length))));
    return Scaffold(
      backgroundColor: Colors.grey.withOpacity(.2),
      bottomNavigationBar: bottomNavWidget1(),
      body: Center(
        child: Column(
          //  crossAxisAlignment: CrossAxisAlignment.center,
          //mainAxisAlignment: MainAxisAlignment.start,
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
              height: 100,
            ),
            SizedBox(
              height: 330,
              child: FortuneWheel(
                selected: selected.stream,
                animateFirst: false,
                items: [
                  for (int i = 0; i < items.length; i++) ...<FortuneItem>{
                    FortuneItem(
                        child: Center(
                      child: SizedBox(height: 40, width: 40, child: items[i]),
                    )),
                  },
                ],
                onAnimationEnd: () {
                  setState(() {
                    //rewards = items1[selected.value];
                    rewards = items1[selected.value];
                  });
                  print(rewards);

                  showDialog(
                    context: context,
                    builder: (ctx) => AlertDialog(
                      backgroundColor: Colors.grey,
                      title: SizedBox(
                          height: 200,
                          child: Center(
                            child: Stack(children: [
                              Image(
                                  image: AssetImage(
                                      'lib/assets/images/celeb.gif')),
                              items[selected.value]
                            ]),
                          )),
                      content: Text(
                        "Congratulations You Won \n" + rewards,
                        style: TextStyle(
                            color: Colors.yellow,
                            fontSize: 20,
                            fontWeight: FontWeight.w600),
                      ),
                      actions: <Widget>[
                        TextButton(
                          onPressed: () {
                            Navigator.of(ctx).pop();
                          },
                          child: Container(
                            padding: const EdgeInsets.all(14),
                            child: const Text(
                              "OK",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                },
                styleStrategy: UniformStyleStrategy(
                  borderColor: primaryColor,
                  borderWidth: 2,
                  color: gcardGrey.withOpacity(.7),
                ),
                indicators: <FortuneIndicator>[
                  FortuneIndicator(
                    alignment: Alignment.topCenter,
                    child: TriangleIndicator(
                      color: primaryColor,
                      width: 20.0,
                      height: 20.0,
                      elevation: 0,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 50,
            ),
            GestureDetector(
              onTap: () {
                if(spinCount>0){
                  setState(() {
                  selected.add(Fortune.randomInt(0, items.length));
                  spinCount--;
                });
                }else{
                  print('error');
                  showDialog(context: context, builder:(ctx)=>AlertScreenWidget(message: "You Already Claimed The Reward Check Your Rewards Section",page: UserHomeScreen(),
                  page2:claimedRewardPage(
                    descriptionMain:"" ,
                    descriptionSub: rewards,
                    giftId:getRandomString(10) ,
                    status:true ,
                    validity: '31-12-2024',
                    
                    image: items[selected.value],
                  ) ,));
                  
                }

              },
              child: Container(
                decoration: BoxDecoration(
                    color: primaryColor,
                    borderRadius: BorderRadius.circular(20)),
                height: 40,
                width: 120,
                child: Center(
                  child: Text(
                    "SPIN",
                    style: TextStyle(
                        color: gBlackColor,
                        fontWeight: FontWeight.w600,
                        fontStyle: FontStyle.italic),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      //bottomNavigationBar: bottomNavWidget(),
    );
    
  }
  String getRandomString(int length) => String.fromCharCodes(Iterable.generate(
    length, (_) => _chars.codeUnitAt(_rnd.nextInt(_chars.length))));
  
}

