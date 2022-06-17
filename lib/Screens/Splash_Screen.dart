import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Authentication_firebase/Sign In.dart';
import 'Activate_Screem.dart';

class Splash_Screen extends StatefulWidget {
  @override
  State<Splash_Screen> createState() => _Splash_ScreenState();
}

class _Splash_ScreenState extends State<Splash_Screen> {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: Colors.white,
            body: Stack(children: [
             ElevatedButton(onPressed: (){
               Navigator.push(context, MaterialPageRoute(builder: (context)=>
               Activates()
               ));

             }, child:  Container(
              height: 900,
               child: Column(
                 children: [
                   Image.asset('asset/Pauscreen.gif'),
                   Image.asset('asset/Text Logo.png',color: Colors.white,height:130,)
                 ],
               )
             ),)

            ]
            )
        )
    );
  }
}
