import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pauscreen/Authentication_firebase/Phone_auth.dart';
import 'package:pauscreen/Screens/Setting_Screen.dart';

class PhoneController{
  static TextEditingController phoneController = TextEditingController();
  static bool verificationCompleted = false;
  static bool codeSent = false;
  static String verificationId = "";

  static List<TextEditingController> controllers = [
    TextEditingController(),
    TextEditingController(),
    TextEditingController(),
    TextEditingController(),
    TextEditingController(),
    TextEditingController(),


  ];



  static Future<void> verifyPhoneNumber()async {
    await FirebaseAuth.instance.verifyPhoneNumber(
      phoneNumber:  "+" + phoneController.text ,
      verificationCompleted: (PhoneAuthCredential credential) async{
        await FirebaseAuth.instance.signInWithCredential(credential);
        Get.snackbar("Success","Verification Completed");
        Get.to(Setting());
      },
      verificationFailed: (FirebaseAuthException e) {
        Get.snackbar("Error","Phone Verification Failed");
      },
      codeSent: (String verificationId, int? resendToken) {
        Get.snackbar("Info","Code Sent");
        PhoneController.verificationId = verificationId;
        Get.to(Verification());
      },
      codeAutoRetrievalTimeout: (String verificationId) {

      },
    );
  }

  static Future<void> signInWithCode(String smsCode) async{

    print("Siginging with code");

    PhoneAuthCredential credential = PhoneAuthProvider.credential(verificationId: verificationId, smsCode: smsCode);
    // Sign the user in (or link) with the credential
    try {
      UserCredential userCredential = await FirebaseAuth.instance.signInWithCredential(credential);
      if(userCredential.user!=null){
        Get.to(Setting());

      }
    }
    catch(e){
      Get.snackbar("Error", e.toString());
    }

  }



}