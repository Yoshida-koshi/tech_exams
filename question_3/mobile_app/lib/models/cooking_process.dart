import 'package:freezed_annotation/freezed_annotation.dart';

part 'cooking_process.freezed.dart';
part 'cooking_process.g.dart';

@freezed
abstract class CookingProcess with _$CookingProcess {
  const factory CookingProcess({
    required String id,
    @JsonKey(name: 'order_number') required int orderNumber,
    required String process,
  }) = _CookingProcess;
  factory CookingProcess.fromJson(Map<String, dynamic> json) => _$CookingProcessFromJson(json);
}