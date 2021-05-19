import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // ignore: non_constant_identifier_names
  double Sum = 1000.00;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
        backgroundColor: Colors.white60,
            appBar: AppBar(
              centerTitle: true,
              leading: Icon(Icons.ac_unit),
              title: Text("myTrendzz", style: TextStyle(
               color: Colors.blueAccent, fontStyle: FontStyle.italic,),),
               backgroundColor: Colors.white,
            ),
          body: Container(
            decoration: BoxDecoration(
              color: Colors.white,
            ),
            child: Column(
              children: [
                Row(
                  children: [
                    SizedBox(
                      width: 150,
                      height: 300,
                    ),
                    Container(
                      height: 100,
                      child: Image.asset("assets/IMG_20210518_203821.jpg",width: 100,height: 200,),
                    )
                  ],
                ),
                Text("Rs $Sum",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
                Text("Your Order has been placed",style: TextStyle(fontSize: 20),),
                SizedBox(
                  height: 50,
                ),
                Text("Verification code:",style: TextStyle(fontSize: 20,color: Colors.grey),),
                SizedBox(
                  height: 10,
                ),
                Text("LiuhION85YGFujnbYFDswq82",style: TextStyle(fontSize: 20,color: Colors.blue),),
                SizedBox(
                  height: 50,
                ),
                Text("Thank You,Have a Good Day ",style: TextStyle(fontSize: 15,color: Colors.black38),)
              ],
            ),
          ),
      ),
    );
  }

}
