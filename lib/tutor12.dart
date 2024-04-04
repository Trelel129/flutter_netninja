import 'dart:developer';

import 'package:flutter/material.dart';

void main() => runApp(const MaterialApp(
  home: Home()
));

class Home extends StatelessWidget{
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('NetNinjaTutorials'),
        centerTitle: true,
        backgroundColor: Colors.red,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          // Row(
          //   mainAxisAlignment: MainAxisAlignment.start,
          //   crossAxisAlignment: CrossAxisAlignment.start,
          //   children: <Widget>[
          //     Text('Hello'),
          //     Text(' World'),
          //   ],
          // ),
          Container(
            padding: const EdgeInsets.all(20.0),
            color: Colors.cyan,
            child: const Text('一'),
          ),
          Container(
            padding: const EdgeInsets.all(30.0),
            color: Colors.pinkAccent,
            child: const Text('ニ'),
          ),
          Container(
            padding: const EdgeInsets.all(40.0),
            color: Colors.yellowAccent,
            child: const Text('三'),
          ),
          // Image(image: AssetImage('assets/images/android.jpeg'))
        ],
      ),
      // Center(
      //   // child: Image
      //   //   (image: AssetImage('assets/images/android.jpeg')
      //   // ),
      //   child: MaterialButton(
      //     onPressed: (){
      //       log('クリック　しました。！');
      //     },
      //     color: Colors.lightBlue,
      //     child: const Text('クリック'),
      // )
      // ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        backgroundColor: Colors.red,
        child: const Text('クリック'),
      ),
    );
  }
}
