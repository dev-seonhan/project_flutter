import 'package:flutter/material.dart';
import 'package:info_toon/screens/home_screen.dart';

void main() {
  //runApp(SampleApp()); // sample page

  //ApiService().getTodaysToons(); // ApiService TEST.....

  runApp(const App());
}

class App extends StatelessWidget {
  // ignore: slash_for_doc_comments
  /**
   * Widget은 Key를 가지고 있고 그것은 ID처럼 쓰인다.
   * Flutter에서 Widget을 식별하기 위해 사용한다.
   */
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomeScreen(),
    );
  }
}
