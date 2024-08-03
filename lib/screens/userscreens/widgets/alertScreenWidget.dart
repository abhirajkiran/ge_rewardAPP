import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AlertScreenWidget extends StatelessWidget {
  const AlertScreenWidget({super.key, required this.message, required this.page, required this.page2});
  final String message;
  final Widget page;
  final Widget page2;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.grey,
      title: SizedBox(
          height: 200,
          child: Center(
            child: Image(image: AssetImage('lib/assets/images/sad.png')),
          )),
      content: Text(
        message,
        style: TextStyle(
            color: Colors.yellow, fontSize: 20, fontWeight: FontWeight.w600),
      ),
      actions: <Widget>[
        TextButton(
          onPressed: () {
            Navigator.of(context).pop();
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => page),
            );
          },
          child: Container(
            padding: const EdgeInsets.all(14),
            child: const Text(
              "Cancel",
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
        TextButton(
          onPressed: () {
            Navigator.of(context).pop();
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => page2),
            );
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
    );
  }
}
