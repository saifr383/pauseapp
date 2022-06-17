import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pauscreen/Authentication_firebase/Auth_screen.dart';

import 'ProfilesScreen.dart';
import 'Setting Dialogues/Set_ParentsPasscode.dart';

class ComeBack{
  Future comeBack(BuildContext context){
    return showDialog(context: context, builder: (BuildContext context){
      return AlertDialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30)
        ),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ListTile(
              trailing: FlatButton(
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>
                  Auth()
                  ));
                },
                child: Icon(Icons.close),
              ),
            ),
            Image.asset('asset/Interval_Vectors.jpeg'),
            SizedBox(height: 20,),
            Text('Ooops! you are not allowed to use ',style: TextStyle(fontWeight: FontWeight.bold),),
            Text('This app athe moments.',style: TextStyle(fontWeight: FontWeight.bold),),
             SizedBox(height: 10,),
            Text('you can use your pasued apps again in',textAlign: TextAlign.center,style: TextStyle(color: Colors.blue),),
         SizedBox(height: 20,),
            Text('02 :16:55',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 50,color: Colors.red),)
         ,Text('   Hours  minutes    seconds'),
            SizedBox(height: 20,),
            Text('Come back at 01:26 PM',style: TextStyle(color: Colors.blue),),
            Row(
              children: [
                Container(
                  height: 40,
                  width: 134,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20)),
                  child: FlatButton(
                    onPressed: () {
                      Passccode().Modifypaascode(context);
                      Passccode().Temporiraly(context);
                      Passccode().ParentsPasscode(context);
                      Passccode().ConfirmPasscode(context);
                    },
                    child: Text(
                      'Pausscode',
                      style: TextStyle(color: Colors.grey.shade500, fontSize: 20,),
                    ),
                  ),
                ),
                SizedBox(width: 10,),
                Container(
                  height: 40,
                  width: 110,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20)),
                  child: FlatButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Profils()));
                    },
                    child: Text(
                      'settings',
                      style: TextStyle(color: Colors.grey.shade500, fontSize: 20),
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      );
    });
  }
}