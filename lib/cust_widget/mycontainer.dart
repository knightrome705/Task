import 'package:flutter/material.dart';
class MyContainer extends StatelessWidget {
  final String image;
  const MyContainer({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding:const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Colors.grey,width:1),
        borderRadius: BorderRadius.circular(5)
      ),
      child: Image(image: AssetImage(image),height: 30,fit: BoxFit.fill,),
    );
  }
}
