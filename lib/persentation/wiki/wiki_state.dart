import 'package:freezed_annotation/freezed_annotation.dart';

part 'wiki_state.freezed.dart';
part 'wiki_state.g.dart';
@freezed
class WikiState with _$WikiState {
  factory WikiState(dynamic wiki, bool isLoading) = _WikiState;
  factory WikiState.fromJson(Map<String, dynamic> json) => _$WikiStateFromJson(json);
}
