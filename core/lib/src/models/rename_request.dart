import 'package:freezed_annotation/freezed_annotation.dart';

part 'rename_request.freezed.dart';
part 'rename_request.g.dart';

@freezed
class RenameRequest with _$RenameRequest {
  const factory RenameRequest(
    String name,
  ) = _RenameRequest;

  factory RenameRequest.fromJson(Map<String, dynamic> json) =>
      _$RenameRequestFromJson(json);
}
