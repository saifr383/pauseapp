import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pauscreen/Screens/ProfilesScreen.dart';

class Permission {
  Future DataPermission(BuildContext context) {
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                    'Please allow Usage Data Acess to pauscreen app to optimize and enjoy the app',style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),textAlign: TextAlign.center,
                ),
                SizedBox(height: 20,),
                Row(
                  children: [
                    Container(
                      height: 30,
                      width: 100,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.grey.shade400,
                      ),
                      child: FlatButton(
                        onPressed: (){
                          Navigator.pop(context);
                        },
                        child: Text('Not Now'),
                      ),
                    ),
                    SizedBox(width: 20,),
                    Container(
                      height: 30,
                      width: 130,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.blue,
                      ),
                      child: FlatButton(
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>
                          Profils()
                          ));
                        },
                        child: Text('Go To Setting'),
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
