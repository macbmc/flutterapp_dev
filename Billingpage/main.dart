import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // ignore: non_constant_identifier_names
  double total=100.00;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
        backgroundColor: Colors.white60,
        appBar: AppBar(
        centerTitle: true,
        leading: IconButton(icon: Icon(Icons.account_balance,color: Colors.black,),
            onPressed:(){
          print("button pressed");
            }
        ),
          title: Text("Payment", style: TextStyle(
            color: Colors.deepOrangeAccent, fontStyle: FontStyle.italic,),),
             backgroundColor: Colors.white,
         ),
          body: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Container(
              color: Colors.white,
              child: Column(
                children: [
                  Row(
                    children: [
                      SizedBox(
                        width: 20,
                        height: 70,
                      ),
                      Text("Delivery Address:",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                    ],
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 30,
                      ),
                      Container(
                        width: 300,
                        child: TextFormField(
                          keyboardType: TextInputType.name,
                          decoration: InputDecoration(
                            border: UnderlineInputBorder(),
                            labelText: "Line 1",
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 30,
                      ),
                      Container(
                        width: 300,
                        child: TextFormField(
                          keyboardType: TextInputType.name,
                          decoration: InputDecoration(
                            border: UnderlineInputBorder(),
                            labelText: "Line 2",
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 30,
                      ),
                      Container(
                        width: 300,
                        child: TextFormField(
                          keyboardType: TextInputType.name,
                          decoration: InputDecoration(
                            border: UnderlineInputBorder(),
                            labelText: "Line 3",
                          ),
                        ),
                      ),
                    ],
                  ),
                 SizedBox(
                   height: 50,
                 ),
                 Container(
                   width: 350,
                   height: 2,
                   color: Colors.grey,
                 ),
                  Row(
                    children: [
                      SizedBox(
                        height: 50,
                        width: 30,
                      ),
                      Text("Order Summary :",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 30,
                      ),
                      Text("Product Code:",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),
                      SizedBox(
                        width: 70,
                      ),
                      Text("Quantity:",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),
                      SizedBox(
                        width: 60,
                      ),
                      Text("Amount:",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),

                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    child: Column(
                      children: [
                        TextBlockOrd(556, 5, 223.5),
                        TextBlockOrd(556, 5, 223.5),
                        TextBlockOrd(556, 5, 223.5),
                        TextBlockOrd(556, 5, 223.5),
                        TextBlockOrd(556, 5, 223.5),
                        TextBlockOrd(556, 5, 223.5),
                        TextBlockOrd(556, 5, 223.5),
                        TextBlockOrd(556, 5, 223.5),
                        TextBlockOrd(556, 5, 223.5),
                        TextBlockOrd(556, 5, 223.5),
                        TextBlockOrd(556, 5, 223.5),
                        Row(
                          children: [
                            SizedBox(
                              height: 50,
                              width: 30,
                            ),
                            Text("Total Amount - ",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                            SizedBox(
                              width: 150,
                            ),
                            Text("$total",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.red),),

                          ],
                        ),
                        Row(
                          children: [
                            SizedBox(
                              height: 70,
                              width: 150,
                            ),
                            ButtonTheme(
                              minWidth: 90,
                              height: 40,
                              child: RaisedButton(
                                color: Colors.deepOrange,
                                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20),side: BorderSide(color: Colors.deepOrange,width: 2)),
                                onPressed: () {
                                  print("Button pressed");
                                },

                                child: Text("Confirm",style: TextStyle(color: Colors.white,fontSize: 20),),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        )
    );
  }
  Row TextBlockOrd(int prod,int quant,double amt){
    return Row(
      children: [
        SizedBox(
          width: 35,
        ),
        Text("#mT$prod",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),
        SizedBox(
          width: 110,
        ),
        Text("$quant",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),
        SizedBox(
          width: 110,
        ),
        Text("$amt",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),

        SizedBox(
          height: 40,
        ),
      ],
    );
  }

}
