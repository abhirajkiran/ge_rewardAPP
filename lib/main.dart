
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:ge_2/firebase_options.dart';
import 'package:ge_2/screens/authentication/loginscreen.dart';
import 'package:ge_2/screens/splash_Screen.dart';
import 'package:ge_2/screens/userscreens/onbordingscreen.dart';
import 'package:ge_2/screens/userscreens/userHomeScreen.dart';
import 'package:ge_2/screens/userscreens/wheelScreen.dart';


void main()async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform
  );
  
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
        home: splashScreen());
  }
}
