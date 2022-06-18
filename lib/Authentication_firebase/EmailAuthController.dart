import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class EmailPasswordAuth{

  static TextEditingController? emailController = TextEditingController();
  static TextEditingController? passwordController = TextEditingController();




  static Future<bool> signUpwithEmailAndPass() async{

    try{
      UserCredential userCredential =  await FirebaseAuth.instance.createUserWithEmailAndPassword(
          email: emailController!.text, password: passwordController!.text);

      if(userCredential.user != null) {
        return true;
      }
      return false;
    }
    catch(e){
      Get.snackbar("Error", e.toString(),snackPosition: SnackPosition.BOTTOM);
      print(e);
      return false;
    }



  }


  static Future<bool> signInwithEmailPass() async{
    try{
      UserCredential userCredential = await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: emailController!.text, password: passwordController!.text);
      if(userCredential.user!=null) {
        return true;
      }
      return false;
    }
    catch(e){
      Get.snackbar("Error", e.toString(),snackPosition: SnackPosition.BOTTOM);
      print(e);
      return false;
    }
  }



}