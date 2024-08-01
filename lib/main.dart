
import 'package:flutter/material.dart';
import 'package:ge_2/screens/authentication/loginscreen.dart';
import 'package:ge_2/screens/userscreens/userHomeScreen.dart';


void main() {
  /* WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(); */
     runApp(const MyApp());
  
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(
              seedColor: const Color.fromARGB(255, 234, 217, 66)),
          useMaterial3: true,
        ),
        home: LoginScreen());
  }
}
