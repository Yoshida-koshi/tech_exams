import 'package:freezed_annotation/freezed_annotation.dart';

part 'register_page_state.freezed.dart';

@freezed
abstract class RegisterPageState with _$RegisterPageState {
  const factory RegisterPageState({
    @Default("") String recipeName,
    @Default("") String howToMake,
    @Default(0) int numberOfPeople,
    @Default(0) int cookingTime,
    @Default("") String category,
    @Default(0) int calories,
    @Default("") String materialName,
    @Default("") String usageAmount,
    @Default("") String process,
    @Default("") String nutrient,
    @Default(0) int amount,
    @Default(false) bool isLoading,
  }) = _RegisterPageState;
}