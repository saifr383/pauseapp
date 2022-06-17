import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Setting Dialogues/Start_Now.dart';

class Profils extends StatefulWidget {
  const Profils({Key? key}) : super(key: key);

  @override
  _ProfilsState createState() => _ProfilsState();
}

class _ProfilsState extends State<Profils> {
  var colors=TextStyle(color: Colors.blue,fontWeight: FontWeight.bold);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('asset/Homebacground.jpeg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 80,left: 10,right: 10),
            child: Column(
              children: [
                ListTile(
                  leading: Text(
                    'Setting',
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold,),
                  ),
                  trailing: FlatButton(onPressed: (){},child: Icon(Icons.close),)
                ),
                Container(
                  height: 50,
                  width: 350,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)
                  ),
                  child: FlatButton(onPressed: (){},child: Text(''),),
                ),
                SizedBox(height: 20,),
                Container(
                  height: 600,
                  width: 350,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20)
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20,top: 20),
                    child: Column(
                       mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('How it Works',style: colors,),
                        Text(' - - - - - - - - - - - - - - - - - - - - - - - - - - '),
                        Text('Share App',style: colors,),
                        Text(' - - - - - - - - - - - - - - - - - - - - - - - - - - '),
                        Text('Rate Us',style: colors,),
                        Text(' - - - - - - - - - - - - - - - - - - - - - - - - - - '),
                        Text('Terms of Services',style: colors,),
                        Text(' - - - - - - - - - - - - - - - - - - - - - - - - - - '),
                        Text('Support',style: colors,),
                        Text(' - - - - - - - - - - - - - - - - - - - - - - - - - - '),

                        Text('Privacy Policy',style: colors,),
                        Text(' - - - - - - - - - - - - - - - - - - - - - - - - - - '),

                        SizedBox(height: 30,),
                        Text('Profile Settings',style: TextStyle(color: Colors.brown.shade200),)
                        ,ListTile(
                          leading: Text('First Name'),
                          trailing: Text('First Name'),
                        )
                        ,ListTile(
                          leading: Text('Last Name'),
                          trailing: Text('Last Name'),
                        )
                        ,ListTile(
                          leading: Text('Email'),
                          trailing: Text('Email'),
                        ),
                        SizedBox(height: 20,),
                        ListTile(
                          leading: Text('Change Password'),
                          trailing: FlatButton(onPressed: (){},
                            child: Icon(Icons.arrow_forward_ios),
                          )
                        ),
                        ListTile(
                          leading: Text('Delete Accont',style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold),),
                          trailing: FlatButton(onPressed: (){},
                          child: Icon(Icons.arrow_forward_ios),
                          )
                        ),

                        Center(
                          child: Container(
                            height: 30,
                            width: 100,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.white),
                            child: FlatButton(
                              onPressed: () {
                                StartsNow().starts(context);
                              },
                              child: Text(
                                'Logout',
                                style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold,fontSize: 20),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
