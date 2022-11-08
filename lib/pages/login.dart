import 'package:chatapp/pages/login_popup.dart';
import 'package:chatapp/pages/register.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink,
      body: Container(
        alignment: Alignment.topLeft,
        width: MediaQuery.of(context).size.width,
         height: MediaQuery.of(context).size.height,
         
        decoration: const BoxDecoration(
         ),
        child:Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          
          Padding(
            padding: const EdgeInsets.only(left: 10,top:10),
            child: Column(children: const [
              Text('Welcom to,',style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Colors.white, letterSpacing: 0.5),),
              SizedBox(),
              Text('Our chat app', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Colors.yellow, letterSpacing: 0.5),)
            ],),
          ),
         const SizedBox(height: 10,),
         Padding(
          padding: const EdgeInsets.only(left: 10,),
           child: Row(children:  [
            TextButton(
              onPressed:() {
                showModalBottomSheet(
                    context: context,
                    isScrollControlled:true,
                     
                    builder:(context){
                      return Container(
                        height: 800,
                        width: MediaQuery.of(context).size.width,
                        child: LoginPart());
                    });
              },
              child: Text('login',style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white, letterSpacing: 0.5),)),
            SizedBox(width: 10,),
            TextButton(onPressed: (){
              showModalBottomSheet(
                    context: context,
                    isScrollControlled:true,
                     
                    builder:(context){
                      return Container(
                        height: 800,
                        width: MediaQuery.of(context).size.width,
                        child: Register());
                    });
            },
              child: Text('Sign up',style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white, letterSpacing: 0.5),))
           ],),
         )

        ],),
       
    
 ));}
}
void _navigateToNextScreen(BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute(builder: (context) => LoginPart()));
  }