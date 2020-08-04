import 'package:flutter/material.dart';

myapp(){
  var text = Text(
    'Radha Swami',
    textDirection: TextDirection.rtl ,
    textAlign: TextAlign.center,
    );

  var mymsgicon = Icon(Icons.message);
  var MyEmailIcon = Icon(Icons.email);

  MyPress(){
     print("Something Clicked...");
  }
  MyPress2(){
     print("Something Clicked...");
  }
  var mymsgbutton = IconButton(icon: mymsgicon, onPressed: MyPress);
  var MyEmailButton= IconButton(icon: MyEmailIcon, onPressed: MyPress2);
  var url = 'https://raw.githubusercontent.com/Garoradua/Mobile-App-Development/master/babaji.jpg';
  var image = Image.network(url,
  width: double.infinity,
  height: double.infinity,
  );
  
  var myappbar = AppBar(
    title: text,
    backgroundColor: Colors.amberAccent,
    leading: mymsgicon,
    actions: <Widget>[mymsgbutton, MyEmailButton],
    
    );

  
  var myhome = Scaffold(
    appBar: myappbar,
    body: image,
  );
  var design = MaterialApp(
    home: myhome,
    debugShowCheckedModeBanner: false,
    );
  return design;
}