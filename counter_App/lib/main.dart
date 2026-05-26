import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    home: MyApp(),
  ));
}
class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  int _counter=0;
  void increment(){
    setState(() {
      _counter++;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        foregroundColor: Colors.white,
        elevation: 0,
        title: Text("Counter App ",style: TextStyle(fontWeight: .bold,fontStyle: .italic,fontSize: 28),),
        centerTitle: true,
      ),
     body: Container(
       height: MediaQuery.of(context).size.height,
       width: MediaQuery.of(context).size.width,
       color: Colors.indigoAccent,
       child: Column(
         mainAxisAlignment: MainAxisAlignment.center,
         children: [
           Text("You the tapped the button \n so many times",style: TextStyle(color: Colors.white,fontWeight: .bold,fontSize: 20),textAlign: TextAlign.center,),
         Text(_counter.toString(),style:TextStyle(color: Colors.black,fontSize:50,fontWeight: .bold)),
         SizedBox(height: 40,),
           ElevatedButton(
               style: ElevatedButton.styleFrom(
                 backgroundColor: Colors.indigo,
                 foregroundColor: Colors.white
               ),
               onPressed: (){
                 increment();
               }, child: Text("Tap to increment",style: TextStyle(fontSize: 14,fontWeight: .bold),))
         ],
       ),
     ),

    );
  }
}
