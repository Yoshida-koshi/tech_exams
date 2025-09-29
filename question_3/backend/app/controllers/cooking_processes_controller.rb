class CookingProcessesController < ApplicationController
  # POST /cooking_process
  def create
    @recipe = Recipe.find_by_id(params_permit[:recipe_id])
    return render json: { "message": "レシピが存在しないので、手順を登録できません" }, status: :not_found unless @recipe

    @cooking_process = CookingProcess.new(
      order_number: params_permit[:order_number],
      process: params_permit[:process],
      recipe: @recipe
    )
    if @cooking_process.save
      render json: { "message": "手順の追加に成功しました" }, status: :ok
    else
      render json: { "message": "手順の追加に失敗しました: #{@cooking_process.errors.full_messages}" }, status: :unprocessable_entity
    end
  end

  private

  def params_permit
    params.permit(:order_number, :process, :recipe_id)
  end
end
