import 'package:flutter/material.dart';

class Challenge1 extends StatelessWidget {

  
  @override
  Widget build(BuildContext context) {

    final size = MediaQuery.of(context).size;
    final width = size.width;

    return Scaffold(
      backgroundColor: Colors.white,
      
      body: SafeArea(
        
        
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            //logo Compañia
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [Image(image: AssetImage('assets/GLUD_LOGO.png'),width: 100),]
            ),
            //imagen compañia
            Image(image: AssetImage('assets/img 1.png'),width: width),
            //Textos
            Text("Hello!", style: Theme.of(context).textTheme.headline3,),
            SizedBox(height: 15,),
            Text("Welcome to Sales TOP A Platform To \nManage Real Estate Needs!", 
              style: Theme.of(context).textTheme.headline5,
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 40,),
            //botones
            Botones(),
            SizedBox(height: 50,),
            //other texts
            Text("Or via social media", 
              style: Theme.of(context).textTheme.headline5,
              textAlign: TextAlign.center,
            ),
            
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image(image: AssetImage('assets/gogle+.png'),width: 45),
                Image(image: AssetImage('assets/facebook.png'),width: 60),
                Image(image: AssetImage('assets/link.png'),width: 47),
              ],
            ),
            SizedBox(height: 20,),
            
          ],        
        ), 
      ),
    );
  }
}

class Botones extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    final buttonheight = 50.0;
    final buttonwidth = 155.0;

    return Row(
  
      mainAxisAlignment: MainAxisAlignment.center,
      children: [

        Container(
            height: buttonheight,
            width: buttonwidth,
            child:ElevatedButton(
            onPressed: null,
            child: Text("Login",style: TextStyle(fontSize: 15, color: Colors.white)),
            style: ButtonStyle(
              
              backgroundColor: MaterialStateProperty.all(Theme.of(context).primaryColor),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25.0),
                )
              )
            )
          ), 
        ),
        SizedBox(width: 15,),  
        Container(
          height: buttonheight,
          width: buttonwidth,
          child: OutlinedButton(
             onPressed: null,
             child: Text('Sign Up', style: Theme.of(context).textTheme.headline6,),
             style: OutlinedButton.styleFrom(
               shape: StadiumBorder(),
               side: BorderSide(color: Colors.black),
             ),
           ),
        )
      ],
    );

  }
}