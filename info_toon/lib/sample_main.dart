import 'package:flutter/material.dart';
import 'package:info_toon/widgets/Button.dart';
import 'package:info_toon/widgets/currency_card.dart';

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
 * 
 * Stateful Widget : 상태를 가지고 있어서 Stateful로 불리운다.
 *        : 상태에 따라 변하게 될 데이터들을 실시간으로 UI에 반영.
 *        : 위젯에 데이터를 저장하고 싶거나 실시간으로 데이터의 변화를 지켜보고 싶을 때
 * Stateful Widget의 데이터는 단지 클래스의 프로퍼티일 뿐. 이때의 데이터는 final이 아니다.
 *  
 * 
 * MaterialApp : Google Style
 * CupertinoApp : IOS Style
 * Scaffold : 화면의 구조를 잡는 역할.
 *        Flutter의 규칙에는 모든 widget에 scaffold를 가져야 한다.
 * 
 * SingleChildScrollView : 화면의 영역 그 이상으로 Widget들이 생겨날 때 사용자가 스크롤링 하여 그 아래의 내용들을 확인 할 수 았도록 하는 Widget
 * 
 */

// ignore: slash_for_doc_comments
/**
 * Dart
 * Named Parameter로 Class를 만드는 방법.
 * 
 * constant 
 *  : 절대 바뀌지 않는 변수. 
 *  : compile전에 value를 사전에 알 수 있는 변수.
 */

// ignore: slash_for_doc_comments
/**
 * Column
 *  : crossAxisAlignment : 수평(가로) 방향 (horizontal)
 *  : mainAxisAlignment : 수직(세로) 방향 (vertical)
 * Row
 *  : crossAxisAlignment : 수직(세로) 방향 (vertical)
 *  : mainAxisAlignment : 수평(가로) 방향 (horizontal)
 *      
 * SizedBox() : 크기가 있는 상자
 * 
 * Text() : 에 스타일을 적용하는 방법
 * 
 * CustomColor 
 *  : Color(0xFF000000)
 *  : Color.fromRGBO(r, g, b, opacity)
 *  : Color.fromARGB(255, r, g, b)
 *  : Colors.white.withOpacity(0.8)
 * 
 * Container
 *  : Div
 *  child를 가지고 있는 박스영역 
 * decoration : BoxDecoration
 *  : borderRadius 지정
 * clipBehavior: Clip.none
 *  : clipBehavior: Clip.hardEdge
 *  : Container에서 벗어나는 widget에 대한 처리
 * 
 * Transform.scale()
 *  : 크기변화
 * Transform.translate()
 *  : 위치이동
 *  : offset() : 지정한 x,y 만큼 이동
 * 
 */

// ignore: slash_for_doc_comments
/**
 * Widget Inspector 를 통해 Layout이 헷갈릴때 참조하기
 * GuideLine Mode
 * Search Mode
 */

class Player {
  String? name; // ? mull option

  Player({required this.name});
}

class SampleApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color(0xFF181818),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 80,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        const Text(
                          'Hey, Selena',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 28,
                              fontWeight: FontWeight.w800),
                        ),
                        Text(
                          'Welcome back',
                          style: TextStyle(
                              color: Colors.white.withOpacity(0.8),
                              fontSize: 18),
                        ),
                      ],
                    )
                  ],
                ),
                const SizedBox(
                  height: 60,
                ),
                Text(
                  'Total Balance',
                  style: TextStyle(
                    fontSize: 22,
                    color: Colors.white.withOpacity(0.8),
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                const Text(
                  '\$5 194 482',
                  style: TextStyle(
                    fontSize: 44,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Button(
                        text: 'Transfer',
                        bgColor: Color(0xFFF1B338),
                        textColor: Colors.black),
                    Button(
                        text: 'Request',
                        bgColor: Color(0xFF1F2123),
                        textColor: Colors.white)
                  ],
                ),
                const SizedBox(
                  height: 80,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Wallets',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 35,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      'View All',
                      style: TextStyle(
                        color: Colors.white.withOpacity(0.8),
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                const CurrencyCard(
                  name: 'Euro',
                  code: 'EUR',
                  amount: '6 428',
                  icon: Icons.euro_rounded,
                  isInverted: false,
                  order: 1,
                ),
                const CurrencyCard(
                  name: 'Bitcoin',
                  code: 'BTC',
                  amount: '9 785',
                  icon: Icons.currency_bitcoin_rounded,
                  isInverted: true,
                  order: 2,
                ),
                const CurrencyCard(
                  name: 'Dollar',
                  code: 'USD',
                  amount: '428',
                  icon: Icons.attach_money_rounded,
                  isInverted: false,
                  order: 3,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
