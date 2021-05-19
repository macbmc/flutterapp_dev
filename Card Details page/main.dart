import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
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
            title: Text("Card Details", style: TextStyle(
            color: Colors.white, fontStyle: FontStyle.italic,),),
            backgroundColor: Colors.black12,
            actions: [

                   PopupMenuButton(
                      color: Colors.white,
                         onSelected: _select,
                      itemBuilder: (BuildContext context) {
                         return {'Home','Order','FAQ'}.map((String choice) {
                      return PopupMenuItem(
                            value: choice,
                        child: Text(choice),
          );
    }).toList();
    },
    ),],
    ),
          body:
          SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      SizedBox(
                        width: 50,
                        height:150,
                      ),
                      Image.asset("assets/IMG_20210518_035616.jpg",height:100,width:300,)
                      ],
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 50,
                      ),
                      Text("Payment Amount", style: TextStyle(fontSize: 20),),

                      ],
                  ),
                  Row(
                    children: [
                      SizedBox(
                        height: 50,
                        width: 50,
                      ),
                      Text("Rs $Sum",style:TextStyle(fontSize: 25),),
                      SizedBox(
                        width: 120,
                      ),
                      RaisedButton(
                        color: Colors.white,
                        shape: RoundedRectangleBorder(side: BorderSide(color: Colors.black12,width: 2)),
                        onPressed: () {
                          print("Button pressed");
                        },

                        child: Text("Edit",style: TextStyle(color: Colors.black),),
                      ),
                    ],
                  ),
                  Container(
                    width: 300,
                    child: TextFormField(
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        border: UnderlineInputBorder(),
                        labelText: "Card Number",
                      ),
                    ),
                  ),
                  Container(
                    width: 300,
                    child: TextFormField(
                      keyboardType: TextInputType.name,
                      decoration: InputDecoration(
                        border: UnderlineInputBorder(),
                        labelText: "Name on Card",
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 55,
                      ),
                      Container(
                        width: 100,
                        child: TextFormField(
                          keyboardType: TextInputType.datetime,
                          decoration: InputDecoration(
                            border: UnderlineInputBorder(),
                            labelText: "Expiry Date",
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 100,
                      ),
                      Container(
                        width: 50,
                        child: TextFormField(
                          inputFormatters: [
                            LengthLimitingTextInputFormatter(3),
                          ],
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                            border: UnderlineInputBorder(),
                            labelText: "CVV",
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      SizedBox(
                        height: 150,
                        width: 50,
                      ),
                      ButtonTheme(
                        minWidth: 100,
                        height: 50,
                        child: RaisedButton(
                          color: Colors.greenAccent,
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20),side: BorderSide(color: Colors.greenAccent,width: 2)),
                          onPressed: () {
                            print("Button pressed");
                          },

                          child: Text("🔒 Pay Now",style: TextStyle(color: Colors.white,fontSize: 20),),
                        ),
                      ),
                      SizedBox(
                        width: 40,
                      ),
                      ButtonTheme(
                        minWidth: 100,
                        height: 50,
                        child: RaisedButton(
                          color: Colors.deepOrange,
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20),side: BorderSide(color: Colors.deepOrange,width: 2)),
                          onPressed: () {
                            print("Button pressed");
                          },

                          child: Text(("Cancel"),style: TextStyle(color: Colors.white,fontSize: 20),),
                        ),
                      )
                      ],
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 20,
                      ),
                      Text("This is a merchant generated page ,please click Pay Now "),
                    ],
                  )
                ],
              ),
            ),
          ),
        )
    );
  }
  void _select(value){
    switch(value){
      case 'Home':
        break;
      case 'Order':
        break;
      case 'FAQ':
        break;
    }
    print(value);
  }

}
