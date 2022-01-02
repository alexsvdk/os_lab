import 'package:freezed_annotation/freezed_annotation.dart';

part 'rename_response.freezed.dart';
part 'rename_response.g.dart';

@freezed
class RenameResponse with _$RenameResponse {
  const factory RenameResponse(
    bool isOk,
  ) = _RenameResponse;

  factory RenameResponse.fromJson(Map<String, dynamic> json) =>
      _$RenameResponseFromJson(json);
}
