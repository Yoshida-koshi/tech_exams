# レシピ管理システムのDB設計書

## 用意したテーブル
### Recipeテーブル
| カラム名 | 型 | 説明 | NULL許容 | 備考 | 
| ------ | ------ | ------ | ------ | ------ |
| id | String | RecipeテーブルのPrimary Key | × | uuidで管理する
| name | String | レシピ名 | × | |
| how_to_make | String | 作り方の説明 | ○ | |
| number_of_people | Integer | 料理を食べる人数 | × | |
| cooking_time | Integer | 調理時間(分) | × | |
| category | String | レシピの分類 | × | |
| calories | Integer | このレシピで摂取できるカロリー数(kcal) | ○ | |

### Materialテーブル
| カラム名 | 型 | 説明 | NULL許容 | 備考 |
| ------ | ------ | ------ | ------ | ------ |
| id | String | MateralテーブルのPrimary Key | × | uuidで管理する |
| name | String | 材料名 | × | |
| usage_amount | String | 材料の使用量 | × | |
| recipe_id | String | 紐付けるレシピのid | × | uuidで管理する |

### CookingProcessテーブル
| カラム名 | 型 | 説明 | NULL許容 | 備考 |
| ------ | ------ | ------ | ------ | ------ |
| id | String | CookingProcessテーブルのPrimary Key | × | uuidで管理する |
| order_number | Integer | 手順の順番 | × | |
| process | String | 手順の説明 | × | |
| recipe_id | String | 紐付けるレシピのid | × | uuidで管理する |

### Nutritionテーブル
| カラム名 | 型 | 説明 | NULL許容 | 備考 |
| ------ | ------ | ------ | ------ | ------ |
| id | String | NutritionテーブルのPrimary Key | × | uuidで管理する |
| nutrient | String | 栄養素名 | × | |
| amount | Integer | 栄養素の量(g) | × | |
| recipe_id | String | 紐付けるレシピのid | × | uuidで管理する |

## ER図
上記のテーブルのリレーションの関係を表したER図は以下の通りである。

<img width="635" height="493" alt="Image" src="https://github.com/user-attachments/assets/a5bd1429-07ae-4148-a05f-b30506717abf" />

## このように設計した理由
将来の拡張性を考慮するために今後カラムを追加するときに他のテーブルに影響が出ないように第3正規化まで行う設計にしたため。

## 工夫した点
- 今後カラムを追加するときに容易に追加できるようにテーブル内のPrimary Key以外のカラム同士で依存関係を作っている場合は他のテーブルに切り出した点。
- カラムに構造化したデータを持たないようにするために他のテーブルに切り出し、1対多のリレーションを組んだ点。

## 改善案や拡張アイデア
- 拡張アイデアとしてレシピを作ったユーザーを追加したりやレシピの画像を追加したりするアイデアがある。ユーザー追加の場合はUserテーブルを作成し、1対多で結べば良い。レシピの画像はRecipeImageテーブルを作成し、1対多で結べば良い。
- 改善案としては今回は無かったが、多対多の場合はNULL値のデータが大量発生しないようにするために中間テーブルを用意し、1対多でそれぞれのテーブルを結ぶようにする。
