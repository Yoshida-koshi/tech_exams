class CreateNutrition < ActiveRecord::Migration[8.0]
  def change
    create_table :nutritions, id: :uuid do |t|
      t.string :nutrient, null: false, default: ""
      t.integer :amount, null: false, default: 0
      t.references :recipe, type: :uuid, null: false, foreign_key: true
      t.timestamps
    end
  end
end
