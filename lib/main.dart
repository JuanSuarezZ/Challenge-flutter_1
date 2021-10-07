import 'package:challenge1/pages/challenge1_page.dart';
import 'package:flutter/material.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
      debugShowCheckedModeBanner: false,
      initialRoute: 'Challenge1',
      routes: {
         'Challenge1' : (BuildContext context) => Challenge1(),
      },
      
      theme: ThemeData(
        //brightness: Brightness.dark,
        primaryColor: Colors.blue[800],
        accentColor: Colors.black,
       
        iconTheme: IconThemeData(color: Colors.black),
        //fontFamily: 'Georgia',

        textTheme: TextTheme(
          headline3: TextStyle(fontSize: 36, fontWeight: FontWeight.bold, color: Colors.black),
          headline5: TextStyle(fontSize: 18, color: Colors.black26,),
          headline6: TextStyle(fontSize: 15, color: Colors.black),

        ),
      ),
    );    
  }
}