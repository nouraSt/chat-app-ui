import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class TextFieldCustm extends StatelessWidget {
  const TextFieldCustm({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      
      width: 250,
      height: 40,
      child: PhysicalModel(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        elevation: 5.0,
        shadowColor: Color.fromARGB(255, 144, 145, 144),
        child: TextFormField(
          decoration:InputDecoration(
            
            border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20.0),
          ),
          hintStyle: TextStyle(color: Colors.grey[800]),
          hintText: "entrer email",
            suffixIcon: Icon(CupertinoIcons.profile_circled)
          ),
        ),
      ),
    );
  }
}