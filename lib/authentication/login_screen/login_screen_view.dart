import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project/authentication/login_screen/login_screen_controller.dart';


class LoginScreenView extends StatelessWidget {
  const LoginScreenView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    final controller = Get.put(LoginScreenController());

    return Container(
      color: Colors.blueAccent,
      child: SafeArea(

        child: Scaffold(
           //backgroundColor: Color(0xFF15202B),

            body: GetBuilder<LoginScreenController>(
                init: LoginScreenController(),
                builder: (value) {
                  if (!value.isLoading) {
                    return SizedBox(
                      height: size.height,
                      width: size.width,
                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                            Material(
                              borderRadius: const BorderRadius.only(
                                bottomRight: Radius.circular(100),
                              ),
                              color: const Color.fromRGBO(230, 233, 250, 1),
                              child: SizedBox(
                                height: size.height / 2,
                                width: size.width,
                                child: Column(
                                  children: [
                                    SizedBox(
                                      height: size.height / 150,//10
                                    ),
                                    Text(
                                      "Housing World",
                                      style: TextStyle(
                                          letterSpacing: 1.2,
                                          color: const Color.fromRGBO(
                                              9, 32, 196, 1),
                                          fontSize: size.width / 9,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(
                                      height: size.height / 120, //60
                                    ),
                                    Text(
                                      "'It's all easy when it's at Home'",
                                      style: TextStyle(
                                        color: const Color.fromRGBO(
                                            90, 106, 165, 1),
                                        fontSize: size.width / 21,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    SizedBox(
                                      height: size.height / 191, //9
                                    ),
                                    SizedBox(
                                      width: size.width / 1.2,
                                      child: Row(
                                        children: [
                                          Container(
                                            height: size.height / 10,
                                            width: size.width / 150,
                                            color: const Color.fromRGBO(
                                                9, 32, 196, 1),
                                          ),
                                          SizedBox(
                                            width: size.width / 40,
                                          ),
                                          RichText(
                                            text: TextSpan(
                                              text: "Welcome\n",
                                              style: TextStyle(
                                                color: Colors.black,
                                                fontSize: size.width / 50,
                                                fontWeight: FontWeight.w500,
                                              ),
                                              children: [
                                                TextSpan(
                                                  text:
                                                  "Enter the Details to login/Signup.(Access MAP here!)",
                                                  style: TextStyle(
                                                    color: const Color.fromRGBO(
                                                        138, 132, 134, 1),
                                                    fontSize: size.width / 50,
                                                    fontWeight: FontWeight.w500,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              height: size.height / 25,
                            ),
                            //********user/Merchant




                            //*******for space
                            SizedBox(
                              height: size.height / 25,
                            ),
                            Container(
                              height: size.height / 15,
                              width: size.width / 1.2,
                              padding: const EdgeInsets.only(left: 20),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(
                                  width: 1,
                                  color: const Color.fromRGBO(9, 32, 196, 1),
                                ),
                              ),
                              child: TextField(
                                controller: controller.phone,
                                maxLength: 10,
                                keyboardType: TextInputType.phone,
                                decoration: const InputDecoration(
                                  border: InputBorder.none,
                                  hintText: "Phone Number",
                                  hintStyle: TextStyle(fontSize: 20.0, color: Colors.grey),
                                  labelStyle: TextStyle(color: Colors.white),
                                  counterText: "",
                                ),
                              ),
                            ),


                            SizedBox(
                              height: size.height / 10,
                            ),

                            // SizedBox(
                            //     height: size.height / 10,
                            //      width: size.width / 3,
                            // child:
                            //   CustomButton(
                            //     text: "Login/SignUp",
                            //     buttonWidth: 3.2,
                            //     function: () {
                            //       if(controller.phone.text.isNotEmpty)
                            //         controller.hang();
                            //
                            //     },
                            //     radius: BorderRadius.circular(10),
                            //   ),
                            // ),

                            // SizedBox(
                            //   height: size.height / 20,
                            // ),

                            SizedBox(
                              width: 200,
                              height: 100,
                            child:
                            ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    primary: Colors.blueAccent, //background color of button
                                    side: BorderSide(width:3, color:Colors.grey), //border width and color
                                    elevation: 3, //elevation of button
                                    shape: RoundedRectangleBorder( //to set border radius to button
                                        borderRadius: BorderRadius.circular(30)
                                    ),
                                    padding: EdgeInsets.all(20) //content padding inside button
                                ),
                                onPressed: (){
                                  if(controller.phone.text.isNotEmpty)
                                  controller.hang();

                                         },
                                child: Text("Login / SignUp")
                            ),
                            ),

                            SizedBox(
                              height: size.height / 20,
                            ),

                            // ElevatedButton(onPressed: (){
                            //   Get.to(()=> Merchant());
                            // }, child: Text("  Merchant\n Login Here!")
                            // ),







                          ],
                        ),
                      ),
                    );
                  }
                  else {
                    return const Center(
                      child:CircularProgressIndicator(),
                    );
                  }
                })),
      ),
    );
  }
}