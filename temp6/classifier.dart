import 'package:flutter/material.dart';

class Classifier extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('분석 결과'),
        ),
        body: Container(
          color: Colors.blueGrey,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  '귀여운 말티즈 입니다!',
                  style: TextStyle(color: Colors.black, fontSize: 30),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text('뒤로가기'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}