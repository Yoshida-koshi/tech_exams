class NutritionsController < ApplicationController
  # POST /nutrition
  def create
    @recipe = Recipe.find_by_id(params_permit[:recipe_id])
    return render json: { "message": "レシピが存在しないので、栄養素を登録できません" }, status: :not_found unless @recipe

    @nutrition = Nutrition.new(
      nutrient: params_permit[:nutrient],
      amount: params_permit[:amount],
      recipe: @recipe,
    )
    if @nutrition.save
      render json: { "message": "栄養素の追加に成功しました" }, status: :ok
    else
      render json: { "message": "栄養素の追加に失敗しました: #{@nutrition.errors.full_messages}" }, status: :unprocessable_entity
    end
  end

  private

  def params_permit
    params.permit(:nutrient, :amount, :recipe_id)
  end
end
