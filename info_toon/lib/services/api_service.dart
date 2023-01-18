import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:info_toon/models/webtoon_detail_model.dart';
import 'package:info_toon/models/webtoon_episode_model.dart';
import 'package:info_toon/models/webtoon_model.dart';

class ApiService {
  static const String baseUrl =
      "https://webtoon-crawler.nomadcoders.workers.dev";

  static const String today = "today";

  // ignore: slash_for_doc_comments
  /**
   * async await을 사용하는 비동기 함수에서 특정 값을 return 받고자 할때 Future키워드를 작성해 주어야 한다.
   * Future : 당장 완료될 수 있는 작업이 아니라는 것을 뜻한다.
   * 그래서 해당 작업아 끝날 때까지 기다리고 task가 마무리가 되면 Response라는 타입을 반환한다.
   * Future가 마무리 되기를 기다렸다가 response를 저장한다. 
   * -> Response의 자체 결과는 string으로 넘어온다.
   * -> Response의 성공여부에 따라 해당 데이터들을 Json으로 디코딩 한다.
   */

  static Future<List<WebtoonModel>> getTodaysToons() async {
    List<WebtoonModel> webtoonInstances = [];

    final url = Uri.parse('$baseUrl/$today');
    final response = await http.get(url);

    if (response.statusCode == 200) {
      final List<dynamic> webtoons = jsonDecode(response.body);
      for (var webtoon in webtoons) {
        // final toon = WebtoonModel.fromJson(webtoon);
        // print(toon.title);
        webtoonInstances.add(WebtoonModel.fromJson(webtoon));
      }

      return webtoonInstances;
    }
    throw Error();
  }

  static Future<WebtoonDetailModel> getToonById(String id) async {
    final url = Uri.parse("$baseUrl/$id");
    final response = await http.get(url);

    if (response.statusCode == 200) {
      final webtoon = jsonDecode(response.body);
      return WebtoonDetailModel.fromJson(webtoon);
    }
    throw Error();
  }

  static Future<List<WebtoonEpisodeModel>> getLatestEpisodesById(
      String id) async {
    List<WebtoonEpisodeModel> episodesInstances = [];

    final url = Uri.parse("$baseUrl/$id/episodes");
    final response = await http.get(url);

    if (response.statusCode == 200) {
      final episodes = jsonDecode(response.body);
      for (var episode in episodes) {
        episodesInstances.add(WebtoonEpisodeModel.fromJson(episode));
      }
      return episodesInstances;
    }
    throw Error();
  }
}
