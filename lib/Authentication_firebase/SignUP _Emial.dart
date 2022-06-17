import 'dart:ui';

import 'package:flutter/material.dart';

import 'Sign In.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  bool checkBoxValue=true;
  bool passwordObscured = true;
  bool ConfirmPasswordObscured = true;
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
            padding: const EdgeInsets.all(30),
            child:ListView(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(100, 100, 100, 0),
                  child: Image.asset("asset/Pauscreen Logo PNG.png"),
                ),
                SizedBox (height:40 ),
                Text('Create an Account',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.blue),),
                SizedBox(height: 40),
                TextFormField(
                  keyboardType: TextInputType.name,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.blue[150],
                    labelText: "First Name",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular((5)),
                    ),
                  ),
                ),
                SizedBox(height:20),
                TextFormField(
                  keyboardType: TextInputType.name,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.blue[150],
                    labelText: "Last Name",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular((5)),
                    ),
                  ),
                ),
                SizedBox(height:20),
                TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    suffixIcon: Icon(Icons.check_circle,color: Colors.green,),
                    filled: true,
                    fillColor: Colors.blue[150],
                    labelText: "Email",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular((5)),
                    ),
                  ),
                ),
                SizedBox(height:20),
                TextFormField(
                  obscureText: passwordObscured,
                  keyboardType: TextInputType.phone,
                  decoration: InputDecoration(
                    suffixIcon: IconButton(onPressed: () { setState(() {
                      passwordObscured = !passwordObscured;
                    }); }, icon: Icon(passwordObscured ?Icons.visibility:Icons.visibility_off),),
                    labelText: "Password",
                    filled: true,
                    fillColor: Colors.blue[150],
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular((5)),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                TextFormField(
                  obscureText: ConfirmPasswordObscured,
                  keyboardType: TextInputType.phone,
                  decoration: InputDecoration(
                    suffixIcon: IconButton(onPressed: () { setState(() {
                      ConfirmPasswordObscured = !ConfirmPasswordObscured;
                    }); }, icon: Icon(ConfirmPasswordObscured ?Icons.visibility:Icons.visibility_off),),
                    filled: true,
                    fillColor: Colors.blue[150],
                    labelText: " Confirm Password",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular((5)),
                    ),
                  ),
                ),
                ListTile(
                  title:Text('I  read and agreed to the terms & Conditions and Privacy Policy',style: TextStyle(color:  Colors.blue),

                  ) ,
                  leading:Checkbox(value: checkBoxValue,
                    activeColor: Colors.blue, onChanged: (bool? value) {
                      checkBoxValue!=value;
                    },
                  ),
                ),

                SizedBox(height: (80)),
                Container( child: FlatButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>
                    SignInScreen()
                    ));
                  }, child: Text('Sign Up',style: TextStyle(fontSize: 20,color: Colors.white,),),
                ),
                  height: 45, width: 280,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.red,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 70,top: 2),
                  child: Row(
                    children: [
                      Text('Already registered?',style: TextStyle(color: Colors.white),),
                      SizedBox(width: 10,),
                      Text('Sign In',style: TextStyle(color: Colors.white,decoration: TextDecoration.underline),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}