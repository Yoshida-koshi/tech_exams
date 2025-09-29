class RecipesController < ApplicationController
  # POST /recipe
  def create
    @recipe = Recipe.new(
      name: params_permit[:name],
      how_to_make: params_permit[:how_to_make],
      number_of_people: params_permit[:number_of_people],
      cooking_time: params_permit[:cooking_time],
      category: params_permit[:category],
      calories: params_permit[:calories],
      )
    if @recipe.save
      render json: { "message": "レシピの追加に成功しました" }, status: :ok
    else
      render json: { "message": "レシピの追加に失敗しました: #{@recipe.errors.full_messages}" }, status: :unprocessable_entity
    end
  end

  # GET /recipe?name=
  def show
    return render json: { "message": "nameが存在しません" }, status: :bad_request unless params[:name].present?

    @recipe = Recipe.find_by_name(params[:name])
    return render json: { "message": "レシピが存在しません" }, status: :not_found unless @recipe

    render json: @recipe.as_json(only: [
      :id,
      :name,
      :how_to_make,
      :number_of_people,
      :cooking_time,
      :category,
      :calories,
    ])
  end

  # GET /recipes?page=&per_page=
  def index
    return render json: { "message": "pageが存在しません" }, status: :bad_request unless params[:page].present?
    return render json: { "message": "per_pageが存在しません" }, status: :bad_request unless params[:per_page].present?

    @recipes = Recipe.all.includes(:materials, :cooking_processes, :nutritions).page(params[:page]).per(params[:per_page])
    render json: @recipes.map { |recipe|
      {
        "id": recipe.id,
        "name": recipe.name,
        "how_to_make": recipe.how_to_make,
        "number_of_people": recipe.number_of_people,
        "cooking_time": recipe.cooking_time,
        "category": recipe.category,
        "calories": recipe.calories,
        "materials": recipe.materials.map { |material|
          {
            "id": material.id,
            "name": material.name,
            "usage_amount": material.usage_amount
          }},
        "cooking_processes": recipe.cooking_processes.map { |cooking_process|
          {
            "id": cooking_process.id,
            "order_number": cooking_process.order_number,
            "process": cooking_process.process
          }},
        "nutritions": recipe.nutritions.map { |nutrition|
          {
            "id": nutrition.id,
            "nutrient": nutrition.nutrient,
            "amount": nutrition.amount,
          }}
      }}
  end

  private

  def params_permit
    params.permit(:name, :how_to_make, :number_of_people, :cooking_time, :category, :calories)
  end
end
