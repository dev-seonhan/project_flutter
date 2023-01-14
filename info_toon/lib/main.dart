import 'package:flutter/material.dart';

// ignore: slash_for_doc_comments
/**
 * void runApp(Widget app)
 * argument : Widget
 * 
 * flutter는 Widget을 합쳐서 app을 작성
 * 앱의 UI를 생성, Widget을 조합하여 UI를 만들고 화면을 구성한다.
 *        reference : Flutter Widget Catalog
 */

// ignore: slash_for_doc_comments
/**
 * StatelessWidget : 가장 기초적인 widget, 화면에 무언가를 띄워주는 역할.
 *        @override / build()
 * MaterialApp : Google Style
 * CupertinoApp : IOS Style
 * Scaffold : 화면의 구조를 잡는 역할.
 *        Flutter의 규칙에는 모든 widget에 scaffold를 가져야 한다.
 */

// ignore: slash_for_doc_comments
/**
 * Dart
 * Named Parameter로 Class를 만드는 방법.
 */

class Player {
  String? name; // ? mull option

  Player({required this.name});
}

void main() {
  var seonhan = Player(name: 'seonhan');

  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          elevation: 5,
          backgroundColor: Color.fromARGB(231, 71, 175, 162),
          centerTitle: false,
          title: Text('Hello flutter!'),
        ),
        body: Center(
          child: Text('Hello world!'),
        ),
      ),
    );
  }
}
