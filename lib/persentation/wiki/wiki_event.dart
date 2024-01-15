import 'package:freezed_annotation/freezed_annotation.dart';

part 'wiki_event.freezed.dart';

@freezed
abstract class WikiEvent<T> with _$WikiEvent {
  const factory WikiEvent.loadWikiList(int page, int size, String authority, String type) = LoadWikiList;
}