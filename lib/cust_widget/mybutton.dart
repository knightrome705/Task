import 'package:flutter/material.dart';
class MyButton extends StatelessWidget {
  const MyButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 20),
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.circular(10)
      ),
      child: const Center(
        child: Text("Login",style: TextStyle(color: Colors.white,fontSize:15),),
      ),
    );
  }
}
