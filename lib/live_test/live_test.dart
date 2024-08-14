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
        content: Text('You clicked the button!'),
      );
      ScaffoldMessenger.of(context).showSnackBar(snackBar);
    }
    return Scaffold(
      appBar: AppBar(
        title: Text('Text Styling App'),
      ),
      body: Column(
        //mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 200,),
          Text('Flutter Text Styling',
            style: TextStyle(
              color: Colors.black,fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 20,),
          Column(
            children: [
              Text('Experiment with text styles',
                style: TextStyle(
                  fontStyle: FontStyle.italic,
                  fontSize: 18,
                ),
              ),
            ],
          ),
          SizedBox(height: 30,),
          Column(
            children: [
              TextButton(onPressed: (){
                showSnackbar();
              },
                  child: Text('Click Me'),
              )
            ],
          ),SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Welcome to ', style: TextStyle(
                color: Colors.black, fontSize: 20,
              ),),
              Text('Flutter!',
              style: TextStyle(
                color: Colors.blue,fontSize: 20,
              ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}