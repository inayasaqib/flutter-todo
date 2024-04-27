import 'package:flutter/material.dart';
import 'package:mywork/Login%20and%20sign/login.dart';
import 'package:mywork/Login%20and%20sign/signup.dart';

class LogOrSign extends StatefulWidget {
  const LogOrSign({super.key});

  @override
  State<LogOrSign> createState() => _LogOrSignState();
}

class _LogOrSignState extends State<LogOrSign> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min, 
          children: [
           const  Icon(Icons.check, color:Color.fromARGB(255, 255, 109, 253), size: 70,),
          const  Text(
              "KNOCKITOFF",
              style: TextStyle(
                fontSize: 40,
                color: Color.fromARGB(255, 255, 109, 253),
                 fontStyle: FontStyle.italic,
            fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 70), 
            ElevatedButton(
              onPressed: () {
                   Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> const Login()));
              },
              style: ElevatedButton.styleFrom(backgroundColor: const Color.fromARGB(255, 255, 255, 255), foregroundColor: Colors.black,  shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0), 
                ),
                textStyle: const TextStyle(fontSize: 20),
                minimumSize: const Size(250, 50)
                ),
              child: const Text('LOGIN'),
            ),
          const  SizedBox(height: 5,),
          const  SizedBox(height: 5,),
          ElevatedButton(
              onPressed: () {
                   Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> const Singup()));
              },
              style: ElevatedButton.styleFrom(backgroundColor: Colors.black, foregroundColor: Colors.white,  shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0), 
                ),
                side: const BorderSide(color: Colors.white,),
                textStyle: const TextStyle(fontSize: 20),
                minimumSize: const Size(250, 50)
                ),
              child: const Text('CREATE ACCOUNT'),
            ),
          ],
        ),
      ),
    );
  }
}