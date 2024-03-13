import 'package:flutter/material.dart';

class myview extends StatelessWidget {
  const myview({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      margin: const EdgeInsets.all(20),
      decoration: const BoxDecoration(
          gradient: LinearGradient(
              colors: [Colors.blue, Colors.purple],
              begin: Alignment.bottomLeft)),
      child: Column(
        children: [
          SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
             Container(
               padding: EdgeInsets.all(20),
               decoration: BoxDecoration(
                   color: Colors.purple,
                 borderRadius: BorderRadius.circular(10)
               ),
             ),
              SizedBox(
                width: 10,
              ),
              Text("Project",style: TextStyle(color: Colors.white),)
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Text("Front-End",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),),
          Text("Development",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),),
          Text(DateTime.now().toString())
        ],
      ),
    );
  }
}