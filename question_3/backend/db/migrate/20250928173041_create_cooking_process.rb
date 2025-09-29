class CreateCookingProcess < ActiveRecord::Migration[8.0]
  def change
    create_table :cooking_processes, id: :uuid do |t|
      t.integer :order_number, null: false, default: 0
      t.string :process, null: false, default: 0
      t.references :recipe, type: :uuid, null: false, foreign_key: true
      t.timestamps
    end
  end
end
