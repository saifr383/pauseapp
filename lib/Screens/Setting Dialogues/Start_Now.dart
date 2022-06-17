import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pauscreen/Authentication_firebase/Sign%20In.dart';
import 'package:pauscreen/Screens/ProfilesScreen.dart';

import '../Come_Back.dart';
import 'Set_ParentsPasscode.dart';

class StartsNow {
  Future starts(BuildContext context) {
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 208),
                  child: Row(
                    children: [
                       IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: Icon(Icons.close),
                        ),

                    ],
                  ),
                ),
                Image.asset('asset/arrowplane.jpeg'),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Use Paused Apps for  00:00:00',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  height: 40,
                  width: 300,
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(20)),
                  child: FlatButton(
                    onPressed: () {
                      ComeBack().comeBack(context);
                    },
                    child: Text(
                      'Start Now',
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
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
                          'Passcode',
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
                          'Settings',
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
