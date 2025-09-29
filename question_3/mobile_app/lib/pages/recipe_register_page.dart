import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mobile_app/clients/api_repository.dart';
import 'package:mobile_app/providers/register_page_notifier.dart';

class RecipeRegisterPage extends ConsumerWidget {
  const RecipeRegisterPage({super.key});

  Widget _inputForm(String inputItemName, WidgetRef ref) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 12),
          child: Text(inputItemName),
        ),
        const SizedBox(height: 12),
        Center(
          child: Padding(
            padding: EdgeInsets.only(left: 12, right: 12),
            child: SizedBox(
              height: 40,
              child: TextFormField(
                onChanged: (value) {
                  ref.read(registerPageProvider.notifier).updateinputItem(
                        inputItemName,
                        value,
                      );
                },
                decoration: InputDecoration(
                  hintText: '$inputItemNameを入力',
                  fillColor: Colors.grey[300],
                  filled: true,
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide.none,
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide.none,
                  ),
                  contentPadding: const EdgeInsets.only(left: 8, top: 8),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final registerPageState = ref.watch(registerPageProvider);
    final registerPageNotifier = ref.read(registerPageProvider.notifier);
    return Stack(
      children: [
        Scaffold(
          appBar: AppBar(
            title: Text('レシピ登録画面'),
            centerTitle: true,
          ),
          body: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _inputForm('レシピ名', ref),
                const SizedBox(height: 8),
                _inputForm('作り方の説明', ref),
                const SizedBox(height: 8),
                _inputForm('想定人数', ref),
                const SizedBox(height: 8),
                _inputForm('調理時間', ref),
                const SizedBox(height: 8),
                _inputForm('種類', ref),
                const SizedBox(height: 8),
                _inputForm('カロリー', ref),
                const SizedBox(height: 8),
                _inputForm('材料名', ref),
                const SizedBox(height: 8),
                _inputForm('材料の使用量', ref),
                const SizedBox(height: 8),
                _inputForm('手順', ref),
                const SizedBox(height: 8),
                _inputForm('栄養素名', ref),
                const SizedBox(height: 8),
                _inputForm('栄養素の量', ref),
                const SizedBox(height: 12),
                Center(
                  child: InkWell(
                    onTap: () async {
                      registerPageNotifier.updateIsLoading(true);
                      await ApiRepository.postRecipe(
                        registerPageState.recipeName,
                        registerPageState.howToMake,
                        registerPageState.numberOfPeople,
                        registerPageState.cookingTime,
                        registerPageState.category,
                        registerPageState.calories,
                      );
                      final recipe =
                          await ApiRepository.fetchRecipeByRecipeName(
                              registerPageState.recipeName);
                      await ApiRepository.postMaterial(
                        registerPageState.materialName,
                        registerPageState.usageAmount,
                        recipe.id,
                      );
                      await ApiRepository.postCookingProcess(
                          1, registerPageState.process, recipe.id);
                      await ApiRepository.postNutrition(
                        registerPageState.nutrient,
                        registerPageState.amount,
                        recipe.id,
                      );
                      registerPageNotifier.updateIsLoading(false);
                    },
                    child: Container(
                      height: 35,
                      width: MediaQuery.of(context).size.width - 24,
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Center(
                        child: Text(
                          '登録する',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        if (registerPageState.isLoading) ...[
          Container(
            height: double.infinity,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.black.withAlpha((255 * 0.7).round()),
            ),
            child: Center(
              child: CupertinoActivityIndicator(
                color: Colors.white,
                radius: 20,
              ),
            ),
          ),
        ],
      ],
    );
  }
}
