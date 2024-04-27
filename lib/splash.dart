import 'package:flutter/material.dart';
import 'package:mywork/Login%20and%20sign/ls.dart';
import 'package:mywork/Login%20and%20sign/signup.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 2), () {
      Navigator.of(context).pushReplacement(MaterialPageRoute(
        builder: (context) => const LogOrSign(),
      ));
    });
  }
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
           Center(
                child: Icon(Icons.check, color: Color.fromARGB(255, 179, 104, 202), size: 100,),
              ),
            Text(
              "KNOCKITOFF",
              style: TextStyle(
                fontSize: 30,
                color: Colors.white,
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.bold,
              ),
            ),
          ]
      )
      )
    );
  }
}