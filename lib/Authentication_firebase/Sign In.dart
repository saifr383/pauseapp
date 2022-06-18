import 'dart:ui';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:pauscreen/Authentication_firebase/SignUpController.dart';

import '../Screens/Setting_Screen.dart';
import 'SignUP _Emial.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {

  final GlobalKey<FormState> _signUpFormKey = GlobalKey();


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Form(
          key: _signUpFormKey,
          child: Stack(
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
                padding: const EdgeInsets.all(30),
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment:   CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(100, 70, 100, 20),
                        child: Image.asset("asset/Pauscreen Logo PNG.png"),
                      ),
                      Text('Email',textAlign: TextAlign.start,),
                      TextFormField(
                        validator: (value){
                          if (value==null) {
                            return 'field is required';
                          }
                          if(value.isEmpty){
                            return 'field is required';
                          }
                          return null;

                        },
                        controller: EmailPasswordAuth.emailController,
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(

                          hintText: "Email",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular((5)),
                          ),
                        ),
                      ),
                      SizedBox(height: 30),
                      Text('Password'),
                      TextFormField(
                        validator: (value){
                          if (value==null) {
                            return 'field is required';
                          }
                          if(value.isEmpty){
                            return 'field is required';
                          }
                          return null;

                        },

                        controller: EmailPasswordAuth.passwordController,
                        obscureText: true,
                        keyboardType: TextInputType.phone,
                        decoration: InputDecoration(

                          hintText: "Password",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular((5)),
                          ),
                        ),
                      ),
                      Padding(
                        padding:  EdgeInsets.only(left: 100),
                        child:FlatButton(
                          onPressed: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>
                            SignUpScreen()
                            ));
                          },
                          child:  Text('Do not have account? SignUp',style: TextStyle(color: Colors.black38),),
                        )
                      ),
                      SizedBox(height: (20)),
                      Padding(
                        padding: const EdgeInsets.only(left: 40),
                        child: Container( child: FlatButton(
                          onPressed: () async{
                            if(_signUpFormKey.currentState!.validate()){
                              bool success =
                                  await EmailPasswordAuth.signInwithEmailPass();
                              if (success) {
                                print(FirebaseAuth.instance.currentUser!.email.toString());
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Setting()));

                              }
                            }

                            // Navigator.push(context, MaterialPageRoute(
                            //   builder: (BuildContext context) => Setting()));


                            }, child: Text('SIGN IN',style: TextStyle(fontSize: 20,color: Colors.white),),),
                          height: 50, width: 230,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.red,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}