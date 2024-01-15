import 'dart:async';
import 'package:adroid_study/persentation/wiki/wiki_ui_evnet.dart';
import 'package:adroid_study/persentation/wiki/wiki_event.dart';
import 'package:adroid_study/util/url.dart';
import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';

class WikiApi with ChangeNotifier{
  final Dio dio;
  WikiApi(this.dio);

  final _eventController = StreamController<WikiUiEvent>();
  Stream<WikiUiEvent> get eventStream => _eventController.stream;

  void onEvent(WikiEvent event){
    event.when(loadWikiList: _loadWikiList);
  }
  dynamic _wiki;
  bool _loading = false;

  dynamic get wiki => _wiki;
  bool get loading => _loading;

  Future<void> _loadWikiList(int page, int size, String authority, String type) async{
    final url = '${WIKI}/list/$page/$size/$authority/$type'; // 여기서 API endpoint를 직접 지정
    final response = await dio.get(url, options: Options(extra: {"refresh": true}));

    if (response.statusCode == 200) {
      final dynamic responseData = response.data;
      if (responseData is Map<String, dynamic>) {
        final Map<String, dynamic> result = responseData['data']; // fromJson 메서드를 Wiki 모델 클래스에 구현해야 함
        _loading = true;
        // 상태가 변할때마다 리스너 넣어줘야함
        notifyListeners();
        _wiki = result;
        notifyListeners();
        _loading = false;
        notifyListeners();
      } else {
        throw Exception('Invalid response data format');
      }
    } else {
      throw Exception('Failed to fetch data');
    }
  }
}