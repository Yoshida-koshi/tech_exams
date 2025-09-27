require 'json'

def load_json
  File.open('question_2_sample_data.json') do |file|
    recipe_list = JSON.load(file)
    return recipe_list
  end
end

def calculate_max_protein(recipe_list, max_calories, max_cooking_time)
  dp = Array.new(max_calories + 1) do
    Array.new(max_cooking_time + 1) { { :max_protein_amount => 0, :ids => [] } }
  end

  recipe_list.each do |recipe|
    recipe_calories = recipe['calories']
    recipe_cooking_time = recipe['cooking_time']
    recipe_nutrition_list = recipe['nutrition_list']
    recipe_protein = recipe_nutrition_list.filter { |nutrition| nutrition['nutrient'].eql?('タンパク質') }[0]
    recipe_protein_amount = recipe_protein['amount']
    recipe_id = recipe['id']

    max_calories.downto(recipe_calories) do |cal|
      max_cooking_time.downto(recipe_cooking_time) do |time|
        not_use_recipe_protein_amount = dp[cal][time][:max_protein_amount]
        use_recipe_protein_amount = dp[cal - recipe_calories][time - recipe_cooking_time][:max_protein_amount] + recipe_protein_amount
        if use_recipe_protein_amount > not_use_recipe_protein_amount
          dp[cal][time] = {
            max_protein_amount: use_recipe_protein_amount,
            ids: dp[cal - recipe_calories][time - recipe_cooking_time][:ids] + [recipe_id]
          }
        end
      end
    end
  end

  max_protein_dp = { :max_protein_amount => 0, :ids => [] }
  max_calories.downto(0) do |cal|
    max_cooking_time.downto(0) do |time|
      if max_protein_dp[:max_protein_amount] < dp[cal][time][:max_protein_amount]
        max_protein_dp = dp[cal][time]
      end
    end
  end
  puts "最大タンパク質量: #{max_protein_dp[:max_protein_amount]}g"
  puts "選んだレシピID: #{max_protein_dp[:ids]}"
end

recipe_list = load_json
calculate_max_protein(recipe_list,  700, 45)
