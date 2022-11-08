import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:chatapp/pages/login.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    new Future.delayed(
        const Duration(seconds: 3),
        () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Login()),
            ));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black12,
      body: Stack(children: [
        Container(
          height: MediaQuery.of(context).size.height,
          color: Colors.black12,
          child: Image.asset('assets/images/cc.png',
          height: MediaQuery.of(context).size.height-20,
          fit: BoxFit.cover,
          ),
          
        ),
        Positioned(
          top:40,
          left: 50,
          right: 50,
          child: Align(
            alignment: Alignment.center,
            child: SizedBox(
  width: 250.0,
  child: DefaultTextStyle(
    textAlign: TextAlign.center,
    style: const TextStyle(
      fontSize: 30.0,
      color: Colors.white
      
    ),
    child: AnimatedTextKit(
      animatedTexts: [
        ScaleAnimatedText('Welcome'),
        
      ],
      
    ),
  ),
            ))),
       
      ]),
    );
  }
}