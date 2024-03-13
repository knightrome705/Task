import 'package:flutter/material.dart';
import 'package:untitled9/bottom_nav.dart';
import 'package:untitled9/cust_widget/mybutton.dart';
import 'package:untitled9/cust_widget/mycontainer.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final email =TextEditingController();
  final password =TextEditingController();
  var height;
  var width;
  @override
  Widget build(BuildContext context) {
    height=MediaQuery.of(context).size.height;
    width=MediaQuery.of(context).size.width;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.grey.shade50,
      appBar: AppBar(
        leading: const Icon(Icons.arrow_back_ios),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
             SizedBox(
              height: height*0.02,
            ),
            const Text(
              "Welcome back!Glad",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            const Text(
              "to see you,Again!",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
             SizedBox(
              height: height*0.02,
            ),
            TextField(
              controller: email,
              decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.grey.shade200,
                  hintText: "Enter your email",
                  border: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)))),
            ),
             SizedBox(
              height:height*0.01,
            ),
            TextField(
              controller: password,
              decoration: InputDecoration(
                  hintText: "Enter your password",
                  filled: true,
                  fillColor: Colors.grey.shade200,
                  suffixIcon: const Icon(Icons.remove_red_eye),
                  border: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)))),
            ),
             SizedBox(
              height: height*0.01,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  "Forgot Password?",
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ),
              ],
            ),
             SizedBox(
              height: height*0.02,
            ),
           InkWell(
               onTap: (){
                 Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const Bottom(),));
               },
               child: const MyButton()),
             SizedBox(
              height: height*0.02,
            ),
            const Row(
              children: [
                Expanded(
                    child: Divider(
                  thickness: 2,
                )),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Text("Or Login with"),
                ),
                Expanded(child: Divider()),
              ],
            ),
            SizedBox(
              height: height*0.02,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                MyContainer(image: "assests/images/facebooklite.png"),
                MyContainer(image: "assests/images/google.png"),
                MyContainer(image: "assests/images/apple.png"),

              ],
            ),
            const SizedBox(
              height: 130,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                RichText(
                    text: const TextSpan(
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 15),
                        children: [
                      TextSpan(text: "Don't have an account?"),
                      TextSpan(
                          text: "Register Now",
                          style: TextStyle(
                              fontSize: 15,
                              color: Colors.blue,
                              fontWeight: FontWeight.bold))
                    ])),
              ],
            )
          ],
        ),
      ),
    );
  }
}
