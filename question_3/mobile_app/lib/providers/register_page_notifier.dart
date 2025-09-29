import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mobile_app/models/register_page_state.dart';

final registerPageProvider =
    StateNotifierProvider<RegisterPageNotifier, RegisterPageState>(
  (ref) => RegisterPageNotifier(),
);

class RegisterPageNotifier extends StateNotifier<RegisterPageState> {
  RegisterPageNotifier() : super(const RegisterPageState());

  void updateinputItem(String inputItem, String value) {
    switch (inputItem) {
      case 'レシピ名':
        state = state.copyWith(recipeName: value);
      case '作り方の説明':
        state = state.copyWith(howToMake: value);
      case '想定人数':
        final numberOfPeople = int.parse(value);
        state = state.copyWith(numberOfPeople: numberOfPeople);
      case '調理時間':
        final cookingTime = int.parse(value);
        state = state.copyWith(cookingTime: cookingTime);
      case '種類':
        state = state.copyWith(category: value);
      case 'カロリー':
        final calories = int.parse(value);
        state = state.copyWith(calories: calories);
      case '材料名':
        state = state.copyWith(materialName: value);
      case '材料の使用量':
        state = state.copyWith(usageAmount: value);
      case '手順':
        state = state.copyWith(process: value);
      case '栄養素名':
        state = state.copyWith(nutrient: value);
      case '栄養素の量':
        final amount = int.parse(value);
        state = state.copyWith(amount: amount);
    }
  }

  void updateIsLoading(bool isLoading) {
    state = state.copyWith(isLoading: isLoading);
  }
}
