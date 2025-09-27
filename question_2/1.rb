require 'json'

def load_json
  File.open('question_2_sample_data.json') do |file|
    receipe_list = JSON.load(file)
    return receipe_list
  end
end

def print_receipe_list(receipe_list)
  receipe_list.each do |receipe|
    puts "id: #{receipe['id']}、レシピ名: #{receipe['name']}、カロリー: #{receipe['calories']}kcal、調理時間: #{receipe['cooking_time']}分"
  end
end

def sort(receipe_list, order_by, order)
  sorted_receipe_list = receipe_list
  receipe_list.each_index do |index|
    if index + 1 >= receipe_list.length
      next
    end

    is_not_sort_condition_asc = (sorted_receipe_list[index][order_by] <=> sorted_receipe_list[index + 1][order_by]) <= 0 && order.eql?('asc')
    is_not_sort_condition_desc = (sorted_receipe_list[index][order_by] <=> sorted_receipe_list[index + 1][order_by]) >= 0 && order.eql?('desc')
    if is_not_sort_condition_asc || is_not_sort_condition_desc
      next
    end

    sort_index = index
    compare_number = order.eql?('asc') ? 1 : -1
    while (sorted_receipe_list[sort_index][order_by] <=> sorted_receipe_list[sort_index + 1][order_by]) == compare_number && sort_index >= 0 do
      save_receipe = sorted_receipe_list[sort_index]
      sorted_receipe_list[sort_index] = sorted_receipe_list[sort_index + 1]
      sorted_receipe_list[sort_index + 1] = save_receipe
      sort_index -= 1
    end
  end
  sorted_receipe_list
end

receipe_list = load_json
puts "並び替える前の並び順"
print_receipe_list(receipe_list)
puts "-----------------------"
sorted_receipe_list = sort(receipe_list, 'calories', 'desc')
puts "並び替えた後の並び順"
print_receipe_list(sorted_receipe_list)
