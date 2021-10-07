import 'package:flutter/material.dart';

class Challenge1 extends StatelessWidget {

  
  @override
  Widget build(BuildContext context) {

    final size = MediaQuery.of(context).size;
    final width = size.width;
    final height = size.height;

    return Scaffold(
      backgroundColor: Colors.white,
      
      body: SafeArea(
        
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              //logo Compañia
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [Image(image: AssetImage('assets/GLUD_LOGO.png'),width: width/5),]
              ),
              //imagen compañia
              Container(
                child: Image(image: AssetImage('assets/img 1.png'), width: width/1.5)

              ),
              //Textos
              Text("Hello!", style: Theme.of(context).textTheme.headline3,),
              
              Text("Welcome to Sales TOP A Platform To \nManage Real Estate Needs!", 
                style: Theme.of(context).textTheme.headline5,
                textAlign: TextAlign.center,
              ),

              //botones
              Botones(),
             
              //other texts

              Column(
                children: [
                  Text("Or via social media", 
                    style: Theme.of(context).textTheme.headline5,
                    textAlign: TextAlign.center,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image(image: AssetImage('assets/facebook.png'),width: 60),
                      SizedBox(width: 2,),
                      Image(image: AssetImage('assets/gogle+.png'),width: 45),
                      SizedBox(width: 5,),
                      Image(image: AssetImage('assets/link.png'),width: 47),
                    ],
                  ),
                  SizedBox(height: height/100)
                ],
              ),
              
              //Expanded(child: Container())
              
              
            ],        
          ),
        ), 
      
    );
  }
}

class Botones extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    final size = MediaQuery.of(context).size;

    final buttonheight = size.height/16;
    final buttonwidth = size.width/2.5;

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
        ),
      ],
    );

  }
}