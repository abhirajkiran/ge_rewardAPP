import 'package:flutter/material.dart';
import 'package:flutter_fortune_wheel/flutter_fortune_wheel.dart';
import 'package:ge_2/core/colors.dart';
import 'package:ge_2/screens/userscreens/widgets/bottomNavWidget.dart';
import 'package:rxdart/rxdart.dart';

class spinWheelScreen extends StatefulWidget {
  const spinWheelScreen({Key? key}) : super(key: key);

  @override
  State<spinWheelScreen> createState() => _spinWheelScreenState();
}

class _spinWheelScreenState extends State<spinWheelScreen> {
  final selected = BehaviorSubject<int>();
  int rewards = 0;

  List<int> items = [100, 200, 300, 400, 500];

  @override
  void dispose() {
    selected.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.withOpacity(.2),
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
                    FortuneItem(child: Text(items[i].toString())),
                  },
                ],
                onAnimationEnd: () {
                  setState(() {
                    rewards = items[selected.value];
                  });
                  print(rewards);
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text("You just won " + rewards.toString()),
                    ),
                  );
                },
                styleStrategy: UniformStyleStrategy(borderColor: primaryColor,borderWidth:2,color: gcardGrey.withOpacity(.7),),
                indicators: <FortuneIndicator>[
                  FortuneIndicator(
                    alignment:Alignment.topCenter,
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
                setState(() {
                  selected.add(Fortune.randomInt(0, items.length));
                });
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
}
