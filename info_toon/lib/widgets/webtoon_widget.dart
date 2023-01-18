import 'package:flutter/material.dart';
import 'package:info_toon/screens/detail_screen.dart';

class Webtoon extends StatelessWidget {
  final String title, thumb, id;

  const Webtoon({
    super.key,
    required this.title,
    required this.thumb,
    required this.id,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DetailScreen(
              title: title,
              thumb: thumb,
              id: id,
            ),
            fullscreenDialog:
                true, // false (side : backBTN) true (dialog : cancelBTN)
          ),
        );
        /**
         * Navigator.push(context, router)
         * DetailScreen을 StatelessWidget을 상속받아 생성하였는데, Navigator.push의 배개변수인 router로 직접 넘겨 줄 수는 없다.
         * 따라서 MaterialPageRoute로 DetailScreen을 감싸 route로 변경하여 인자를 전달하도록 한다.
         */
      },
      child: Column(
        children: [
          Container(
            width: 250,
            clipBehavior: Clip.hardEdge,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(
                15,
              ),
              boxShadow: [
                BoxShadow(
                  blurRadius: 7,
                  offset: const Offset(5, 5),
                  color: Colors.black.withOpacity(0.5),
                ),
              ],
            ),
            child: Image.network(thumb),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            title,
            style: const TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.w200,
            ),
          ),
        ],
      ),
    );
  }
}
