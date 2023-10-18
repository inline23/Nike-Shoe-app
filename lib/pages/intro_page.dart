// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import 'home_page.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0 , ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //  logo
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset('lib/images/logo.png' , width: 280, height: 240,),
              ),
              SizedBox(height: 48,),
              //  title 
              Text(
                'Just Do It',
                style: TextStyle(
                  fontWeight: FontWeight.bold ,
                  fontSize: 20,
                ),
              ),
        
              SizedBox(height: 48,),

              //  sub title
              Text(
                'Brand New Sneakers and Custom Kicks made with premium quality ',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey,
                ),
                textAlign: TextAlign.center,
              ),

              SizedBox(height: 48,),
              //start now button 
              GestureDetector(
                onTap: ()=> Navigator.push(context, MaterialPageRoute(
                  builder:(context) => HomePage(),
                  )),
                child: Container(
                  decoration: BoxDecoration(color: Colors.grey[900],
                  borderRadius: BorderRadius.circular(12),
                  ),
                  padding: EdgeInsets.all(25),
                  child: Center(
                    child: Text(
                      'Shop Now' , 
                      style: TextStyle(
                        color: Colors.white , 
                        fontWeight: FontWeight.bold ,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}