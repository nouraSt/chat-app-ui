import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../widgets/text_field.dart';
import '../widgets/text_fields2.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink,
      body: Container(
          width: MediaQuery.of(context).size.width,
           height:800,
           
          decoration: const BoxDecoration(
     
           ),
          child: Stack(
            
            children: 

          [
     
              Positioned(
                top:10,
                left: 0,
                child: SizedBox(
                  width: 400,
                  
                  child: Image.asset('assets/images/eclipse.png',
                  fit: BoxFit.fill,
                   
                    ),
                ),
              ),
            
            
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: 
                 Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children:  [
                       SizedBox(height:150,),
                       Text('Register',style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: Colors.black, letterSpacing: 0.5),),
                      SizedBox(height: 10,),
                      TextFieldCustm(),
                      SizedBox(height: 8,),
                      MyWidget(),
                      SizedBox(height: 10,),
                      MyWidget(),
                      SizedBox(height: 10,),
                      TextButton(onPressed: (){}, child: Container(
                        decoration:  BoxDecoration(
                          color: Colors.yellow,
                          border: Border.all(color: Colors.yellow),
                          borderRadius: BorderRadius.all(Radius.circular(10))
                        ),
                       child:  Padding(
                        padding: EdgeInsets.all(10),
                        child: Text('Register Now')),

                      )),
                      SizedBox(height: 10,),
                      Row(children:[Text('Already have an account?'),
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
                        child: Text(' Sign in'))] )
                      
                  ],),
              ),
            
             
          ],),
          
          ),
    );
  }
}