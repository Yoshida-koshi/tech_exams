class CreateMaterial < ActiveRecord::Migration[8.0]
  def change
    create_table :materials, id: :uuid do |t|
      t.string :name, null: false, default: ""
      t.string :usage_amount, null: false, default: ""
      t.references :recipe, type: :uuid, null: false, foreign_key: true
      t.timestamps
    end
  end
end
