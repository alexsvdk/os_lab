import 'dart:convert';
import 'dart:typed_data';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'message.freezed.dart';
part 'message.g.dart';

@freezed
class Message with _$Message {
  const factory Message(
    MessageType messageType, {
    @JsonKey(defaultValue: null, includeIfNull: false) DataType? dataType,
    @JsonKey(defaultValue: null, includeIfNull: false)
        Map<String, dynamic>? data,
  }) = _Message;

  factory Message.fromJson(Map<String, dynamic> json) =>
      _$MessageFromJson(json);

  factory Message.fromRaw(Uint8List raw) =>
      _$MessageFromJson(jsonDecode(String.fromCharCodes(raw)));

  static final hi = Message(MessageType.hi);
  static final bye = Message(MessageType.bye);
}

enum MessageType {
  /// Подключение
  hi,

  /// Какая-то информация
  data,

  /// Информация не изменилась
  sameData,

  /// Завершение соединения
  bye,
}

enum DataType {
  /// Информация о окне
  displayInfo,

  /// Запрос о изменении заголовка
  renameRequest,

  /// Ответ о изменении заголовка
  renameResponse,

  /// Информация о swap
  swapinfo,
}
