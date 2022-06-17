import 'package:flutter/material.dart';

import 'Phone_auth.dart';
import 'Sign In.dart';
class Auth extends StatefulWidget {
  const Auth({Key? key}) : super(key: key);

  @override
  _AuthState createState() => _AuthState();
}

class _AuthState extends State<Auth> {
  @override
  Widget build(BuildContext context) {
    return Stack(
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
          padding: const EdgeInsets.only(top: 150,left: 65,right: 50),
          child: Column(
            children: [
              Container(
                height: 40,
                width: 250,
                decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(20)
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Row(
                    children: [
                   Image.network('https://cdn.iconscout.com/icon/free/png-128/google-152-189813.png',height: 30,),
                      FlatButton(
                        onPressed: (){
                        },
                        child: Text('Google Sign in',style: TextStyle(color: Colors.white,fontSize: 20),),
                      ),
                    ],
                  ),
                )
              ),
              SizedBox(height: 35,),
              Container(
                height: 40,
                width: 240,
                decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(20)
                ),
                child: FlatButton(
                  onPressed: (){
                  },
                  child:  Row(
                    children: [
                      Icon(Icons.apple,size: 30,),
                      FlatButton(
                        onPressed: (){
                        },
                        child: Text('Apple Log in',style: TextStyle(color: Colors.white,fontSize: 20),),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 35,),
              Container(
                height: 40,
                width: 250,
                decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(20)
                ),
                child: FlatButton(
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>
                    Verification()
                    ));
                  },
                  child:  Row(
                    children: [
                      Icon(Icons.phone_iphone_outlined,size: 30,),
                      FlatButton(
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>
                          Verification()
                          ));


                        },
                        child: Text('Phone Auth',style: TextStyle(color: Colors.white,fontSize: 20),),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 35,),
              Container(
                height: 40,
                width: 250,
                decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(20)
                ),
                child: FlatButton(
                  onPressed: (){
                  },
                  child:  Row(
                    children: [
                      Icon(Icons.facebook,color:Colors.white,size: 35,),
                      FlatButton(
                        onPressed: (){
                        },
                        child: Text('Facebook Log in',style: TextStyle(color: Colors.white,fontSize: 20),),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 35,),
              Container(
                height: 40,
                width: 250,
                decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(20)
                ),
                child: FlatButton(
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>
                    SignInScreen()
                    ));
                  },
                  child:  Row(
                    children: [
                      Icon(Icons.email,size: 25,),
                      FlatButton(
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>
                          SignInScreen()
                          ));
                        },
                        child: Text('Email & Password',style: TextStyle(color: Colors.white,fontSize: 20),),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
