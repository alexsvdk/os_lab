import 'package:freezed_annotation/freezed_annotation.dart';

part 'message.freezed.dart';
part 'message.g.dart';

@freezed
class Message with _$Message {
  const factory Message(
    MessageType messageType,
    @JsonKey(defaultValue: null, includeIfNull: false)
        Map<String, dynamic>? data,
  ) = _Message;

  factory Message.fromJson(Map<String, dynamic> json) =>
      _$MessageFromJson(json);
}

enum MessageType {
  hi,
  displayInfo,
  renameRequest,
  renameResponse,
  swapinfo,
  bye,
}
