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
