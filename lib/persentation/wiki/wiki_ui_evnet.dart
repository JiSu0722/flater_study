import 'package:freezed_annotation/freezed_annotation.dart';
part 'wiki_ui_evnet.freezed.dart';
@freezed
abstract class WikiUiEvent<T> with _$WikiUiEvent<T>{
  const factory WikiUiEvent.showSnackBar(String message) = ShowSnackBar;
}