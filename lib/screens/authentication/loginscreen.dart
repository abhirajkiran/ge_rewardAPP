
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:ge_2/core/colors.dart';
import 'package:ge_2/screens/userscreens/userHomeScreen.dart';


class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _emailcontroller = TextEditingController();
  final _passwordcontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            "lib/assets/images/ge_r2.png",
            fit: BoxFit.cover,
            height: double.infinity,
            width: double.infinity,
            opacity: const AlwaysStoppedAnimation(.8),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10, top: 180),
            child: Column(
              children: [
                Spacer(),
                Padding(
                  padding: EdgeInsets.only(left: 8.0, right: 8.0, top: 30),
                  child: Row(
                    children: [
                      /*  SizedBox(
                        width: 60,
                        child: TextField(
                            style: TextStyle(color: Colors.white),
                            readOnly: true,
                            controller: TextEditingController(text: '+971'),
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15.0),
                              ),
                            )),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      SizedBox(width: 5), */
                      Expanded(
                        child: TextField(
                          controller: _emailcontroller,
                          style: TextStyle(color: Colors.white),
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                            hintText: "Email",
                            hintStyle: TextStyle(
                                color: gWhiteColor,
                                fontWeight: FontWeight.w200),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(left: 8.0, right: 8.0, top: 15),
                  child: TextField(
                    controller: _passwordcontroller,
                    obscureText: true,
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      filled: true,
                      hintStyle: TextStyle(
                          color: gWhiteColor, fontWeight: FontWeight.w200),
                      hintText: "Password",
                      fillColor: Colors.transparent.withOpacity(.2),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 14,
                ),
                ClipRRect(
                  borderRadius: const BorderRadius.all(Radius.circular(15)),
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 20),
                    child: ElevatedButton(
                      onPressed: () {
                        /* FirebaseAuth.instance
                            .signInWithEmailAndPassword(
                                email: _emailcontroller.text,
                                password: _passwordcontroller.text)
                            .then((value) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => UserHomeScreen()),
                          );
                        }); */
                         Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => UserHomeScreen()),
                          );
                        print('aacc');
                        print(_emailcontroller.text);
                        print(_passwordcontroller.text);
                      },
                      style: ElevatedButton.styleFrom(
                        foregroundColor: Colors.white,
                        backgroundColor: primaryColor,
                        minimumSize: const Size(350, 58),
                      ),
                      child: const Text(
                        'Login',
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
