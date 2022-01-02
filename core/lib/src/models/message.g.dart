// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'message.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Message _$$_MessageFromJson(Map<String, dynamic> json) => _$_Message(
      $enumDecode(_$MessageTypeEnumMap, json['messageType']),
      json['data'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$$_MessageToJson(_$_Message instance) {
  final val = <String, dynamic>{
    'messageType': _$MessageTypeEnumMap[instance.messageType],
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('data', instance.data);
  return val;
}

const _$MessageTypeEnumMap = {
  MessageType.hi: 'hi',
  MessageType.displayInfo: 'displayInfo',
  MessageType.renameRequest: 'renameRequest',
  MessageType.renameResponse: 'renameResponse',
  MessageType.swapinfo: 'swapinfo',
  MessageType.bye: 'bye',
};
