import 'package:freezed_annotation/freezed_annotation.dart';

part 'display_info.freezed.dart';
part 'display_info.g.dart';

@freezed
class DisplayInfo with _$DisplayInfo {
  const factory DisplayInfo(
    int width,
    int height,
  ) = _DisplayInfo;

  factory DisplayInfo.fromJson(Map<String, dynamic> json) =>
      _$DisplayInfoFromJson(json);
}
