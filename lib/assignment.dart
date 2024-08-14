import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main (){
  runApp(MyApp());
}
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
    );
  }
}
class Home extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    void showSnackbar() {
      final snackBar = SnackBar(
        content: Text('Button Pressed !'),
      );
      ScaffoldMessenger.of(context).showSnackBar(snackBar);
    }
    return Scaffold(
      appBar: AppBar(
        title: Text('Greeting App'),
      ),
      body: Column(
        //mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 100,),
          Text('Hello, World !',
          style: TextStyle(
            color: Colors.redAccent,fontSize: 20,
              fontWeight: FontWeight.bold,
          ),
          ),
          SizedBox(height: 20,),
          Column(
            children: [
              Text('Welcome to Flutter !',
              style: TextStyle(
                fontSize: 18,
              ),
              ),
            ],
          ),
          SizedBox(height: 30,),
          Column(
            children: [
              Image.asset('assets/flutter_logo.png')
            ],
          ),
          SizedBox(height: 20,),
          Column(
            children: [
              ElevatedButton(onPressed: (){
                showSnackbar();
              },
                  child: Text('Press Me',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                style: ElevatedButton.styleFrom(

                  backgroundColor: Colors.green,
                ),
                ),
            ],
          ),
          Row(),
        ],
      ),
    );
  }

}