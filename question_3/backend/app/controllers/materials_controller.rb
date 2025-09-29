class MaterialsController < ApplicationController
  # POST /material
  def create
    @recipe = Recipe.find_by_id(params_permit[:recipe_id])
    return render json: { "message": "レシピが存在しないので、材料データを登録できません" }, status: :not_found unless @recipe

    @material = Material.new(
      name: params_permit[:name],
      usage_amount: params_permit[:usage_amount],
      recipe: @recipe,
    )
    if @material.save
      render json: { "message": "材料の追加に成功しました" }, status: :ok
    else
      render json: { "message": "材料の追加に失敗しました: #{@material.errors.full_messages}" }, status: :unprocessable_entity
    end
  end

  private

  def params_permit
    params.permit(:name, :usage_amount, :recipe_id)
  end
end
