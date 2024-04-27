import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:mywork/Login%20and%20sign/signup.dart';
import 'package:mywork/Login%20and%20sign/sucessful.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  login() async {
    try {
  final credential = await FirebaseAuth.instance.signInWithEmailAndPassword(
    email: emailController.text,
    password: passwordController.text,
  );
  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const Sucessful()));
} on FirebaseAuthException catch (e) {
  if (e.code == 'user-not-found') {
    print('No user found for that email.');
  } else if (e.code == 'wrong-password') {
    print('Wrong password provided for that user.');
  }
}
   }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
backgroundColor: Colors.black,
       body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
           const  Icon(Icons.check, color: Color.fromARGB(255, 236, 96, 254), size: 55,),
            const Text(
              "KNOCKITOFF",
              style: TextStyle(
                fontSize: 30,
                color: Colors.white,
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 30.0),
            const Text(
              "Log In",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 30.0,
              ),
            ),
            const Text(
              "Welcome Back!",
              style: TextStyle(
                fontSize: 20.0,
                color: Color.fromARGB(255, 236, 96, 254),
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 50.0),
              child: TextField(
                controller: emailController,
                decoration: const InputDecoration(
                  labelText: "Email",
                  fillColor: Colors.white
                ),
                style: const TextStyle(color: Colors.white),
              ),
            ),
            Container(
                padding: const EdgeInsets.symmetric(horizontal: 50.0),
              child: TextField(
                controller: passwordController,
                decoration: const InputDecoration(
                  labelText: 'Password',
                  fillColor: Colors.white
                ),
                style: const TextStyle(color: Colors.white),
              ),
            ),
            const  SizedBox(height: 15.0,),
            ElevatedButton(
              onPressed: (){login();}, 
              style: ElevatedButton.styleFrom(backgroundColor: const Color.fromARGB(255, 236, 96, 254), shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0), 
                ),
                textStyle: const TextStyle(fontSize: 20),
                minimumSize: const Size(250, 50)), 
              child: const Text("Login", style: TextStyle(fontSize: 20, color: Colors.white),)),
              TextButton(onPressed: (){Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const Singup()));}, child: const Text("Do not have an account? Signup Here", style: TextStyle(fontSize: 15, color: Colors.white,),))
          ] 
      )
      )
    );
  }
}