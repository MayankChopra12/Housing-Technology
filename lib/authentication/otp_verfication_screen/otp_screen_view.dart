
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:project/authentication/login_screen/login_screen_controller.dart';
import 'package:project/authentication/login_screen/login_screen_view.dart';
import 'package:project/const/custom_button.dart';
import 'package:project/intro.dart';
import 'package:project/sign_in.dart';

class OtpVerificationScreen extends StatelessWidget {
  const OtpVerificationScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    LoginScreenController controller = Get.find();

    return Container(
      color: Colors.blueAccent,
      child: SafeArea(
          child: Scaffold(
            //backgroundColor: Color(0xFF15202B),
            body: SizedBox(
              height: size.height,
              width: size.width,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: Container(
                        height: size.height / 7,
                        width: size.width / 3,
                        alignment: Alignment.center,
                        decoration: const BoxDecoration(
                          color: Color.fromRGBO(230, 233, 250, 1),
                          borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(1000),
                          ),
                        ),
                        child: InkWell(
                          onTap: () {
                            Get.to(()=> LoginScreenView());
                          },
                          child: Icon(
                            Icons.arrow_back,
                            size: size.width / 12,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: size.height / 22,
                    ),


                    Column(
                      children: [
                        Align(
                          alignment: Alignment.center,
                          child:

                          Container(

                            height: size.height / 2,
                            width: size.width / 2,
                            alignment: Alignment.center,
                            decoration: const BoxDecoration(
                              color: Color.fromRGBO(230, 233, 250, 1),
                              borderRadius: BorderRadius.only(
                                bottomRight: Radius.circular(1000),
                              ),
                            ),
                            child:
                            RichText(
                              textAlign: TextAlign.center,
                              text: TextSpan(
                                text: "Verify Your Phone Number\n",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: size.width / 30,
                                  fontWeight: FontWeight.bold,
                                ),
                                children: [
                                  TextSpan(
                                    text:
                                    "Enter the OTP that you have\n recieved through SMS",
                                    style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: size.width / 30,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ),



                          ),

                        ),


                      ],
                    ),



                    SizedBox(height: size.height / 15),
                    SizedBox(
                      height: size.height / 18,
                      width: size.width / 1.2,
                      child: PinCodeTextField(
                        appContext: context,
                        controller: controller.otp,
                        length: 6,
                        onChanged: (val) {},
                        pinTheme: PinTheme(
                            shape: PinCodeFieldShape.circle,
                            fieldHeight: size.height / 18,
                            fieldWidth: size.width / 8),
                        keyboardType: TextInputType.number,
                      ),
                    ),
                    SizedBox(
                      height: size.height / 10,
                    ),
                    // SizedBox(
                    //   height: size.height / 5,
                    //   width: size.width / 4,
                    //  child:
                     //CustomButton(
                    //   text: "Submit",
                    //   buttonWidth: 2.5,
                    //   function: () {
                    //      //controller.signInWithPhoneNumber();
                    //
                    //
                    //
                    //
                    //   },
                    // ),


                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              primary: Colors.blue, //background color of button
                              side: BorderSide(width:3, color:Colors.brown), //border width and color
                              elevation: 3, //elevation of button
                              shape: RoundedRectangleBorder( //to set border radius to button
                                  borderRadius: BorderRadius.circular(50)
                              ),
                              padding: EdgeInsets.all(20) //content padding inside button
                          ),
                          onPressed: (){
                            controller.signInWithPhoneNumber();
                          },
                          child: Text("Sumbit"),
                      ),





                    // ),

                  ],
                ),
              ),
            ),
          )),
    );
  }
}