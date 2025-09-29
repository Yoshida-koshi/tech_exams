class CreateRecipe < ActiveRecord::Migration[8.0]
  def change
    create_table :recipes, id: :uuid do |t|
      t.string :name, null: false, default: ""
      t.string :how_to_make, default: ""
      t.integer :number_of_people, null: false, default: 0
      t.integer :cooking_time, null: false, default: 0
      t.string :category, null: false, default: ""
      t.integer :calories, default: 0
      t.timestamps
    end
  end
end
