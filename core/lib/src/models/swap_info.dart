import 'package:freezed_annotation/freezed_annotation.dart';

part 'swap_info.freezed.dart';
part 'swap_info.g.dart';

@freezed
class SwapInfo with _$SwapInfo {
  const factory SwapInfo(
    int swapSize,
    int freeSpace,
  ) = _SwapInfo;

  factory SwapInfo.fromJson(Map<String, dynamic> json) =>
      _$SwapInfoFromJson(json);
}
