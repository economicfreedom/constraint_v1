import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

// ConstrainedBox 최소 초대 값을 명시할 때 사용하는 위젯이다.
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          // Stack 여러 자식 위젯을 겹치게 배치할 수 있게 하는 컨테이너 위젯이다.
          child:Stack(
            children: [
              Positioned(
                top: 50,
                left: 50,
                child: Container(
                  width: 200,
                  height: 200,
                  color: Colors.redAccent,
                ),
              ),
              Positioned(
                bottom: 50,
                right: 50,
                child: Container(

                  width: 100,
                  height: 100,
                  color: Colors.blue,
                ),
              )
            ],
          )
        ),
      ),
    );
  }
}