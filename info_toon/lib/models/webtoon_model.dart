class WebtoonModel {
  // (1) : named constructor을 이용한 방식.
  // property를 초기화 할 수 있어서 편리하게 사용 가능.
  final String title, thumb, id;

  WebtoonModel.fromJson(Map<String, dynamic> json)
      : title = json['title'],
        thumb = json['thumb'],
        id = json['id'];

  // (2) : 잘쓰이는 방법이 아님.
  // late final String title, thumb, id;
  // WebtoonModel(Map<String, dynamic> json) {
  //   title = json['title'];
  //   thumb = json['thumb'];
  //   id = json['id'];
  // }
}
