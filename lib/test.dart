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
          // 첫번째 자식에 여유 공간이 있어야 정렬이 가능하다
          child:Center(
            child: Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  width: 200,
                  height: 200,
                  color: Colors.blueAccent,
                ),
                Container(
                  width: 150,
                  height: 150,
                  color: Colors.redAccent,
                ),
                Container(
                  width: 80,
                  height: 80,
                  color: Colors.orangeAccent,
                ),
                Container(
                  width: 40,
                  height: 40,
                  color: Colors.greenAccent,
                ),
              ],
            ),
          )
        ),
      ),
    );
  }
}