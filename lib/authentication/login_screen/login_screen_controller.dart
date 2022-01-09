import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:project/authentication/otp_verfication_screen/otp_screen_view.dart';
import 'package:project/const/const.dart';



import '../../display.dart';
import '../../latitude.dart';




String Name = "";
class LoginScreenController extends GetxController{
  final controller = Get.put(HomeController());
  final FirebaseAuth _auth  = FirebaseAuth.instance;
  final TextEditingController phone = TextEditingController();
  final TextEditingController user = TextEditingController();
  final TextEditingController otp = TextEditingController();
   ConfirmationResult confirmationResult;
  String verificationId = "";
  bool isLoading = false;
  //
  //   void verifyPhoneNumber() async{
  //     isLoading = true;
  //     update();
  //     try{
  //       await _auth.verifyPhoneNumber(
  //
  //         phoneNumber: "+91${phone.text}",
  //         verificationCompleted: (PhoneAuthCredential credential) async {
  //           await _auth.signInWithCredential(credential);
  //           showAlert("Verified");
  //         } ,
  //         verificationFailed: (FirebaseAuthException exception){
  //           showAlert("Verification Failed");
  //         },
  //         codeSent: (String _verificationId, int? forceRespondToken){
  //           showAlert("Verification code sent");
  //           verificationId = _verificationId;
  //           Get.to(()=> const OtpVerificationScreen());
  //
  //         },
  //         codeAutoRetrievalTimeout: (String _verificationId){
  //           verificationId  = _verificationId;
  //         },);
  //     }catch(e){
  //         showAlert("Error Occured: $e");
  //     }
  //   }
        void hang () async{

      try{
         confirmationResult = await _auth.signInWithPhoneNumber('+91${phone.text}');//web
         Get.to(()=> const OtpVerificationScreen());
      }catch (e){
        showAlert("Error Occured: $e");
      }
        }

    void signInWithPhoneNumber() async{
      try{

       // FirebaseAuth auth = FirebaseAuth.instance; // web

       //  Name = user.text; // web

// Wait for the user to complete the reCAPTCHA & for an SMS code to be sent.
      //  Get.to(()=> const OtpVerificationScreen()); //web

      // ConfirmationResult confirmationResult = await _auth.signInWithPhoneNumber('+91${phone.text}');//web
      UserCredential userCredential = await confirmationResult.confirm(otp.text);//web



        // final AuthCredential credential = PhoneAuthProvider.credential(
        //     verificationId: verificationId,
        //     smsCode: otp.text);

       // UserCredential userCredential = await confirmationResult.confirm('otp.text'); // web test line

         //var signInUser = await _auth.signInWithCredential(credential);
         //final User? user = signInUser.user;
        //  showAlert("Sign In Successfully, User UID : ${user!.uid}");
        //
          // print("Sign In Successfully, User UID : ${user.uid}");

        Get.to(()=> display());
      controller.getLocation();


      }catch(e){
        showAlert("Error Occured: $e");
      }
    }


}