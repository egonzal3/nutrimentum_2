class CreateRecipes < ActiveRecord::Migration[5.1]
  def change
    create_table :recipes do |t|
      t.integer :ingredient1
      t.float :ing1_quant
      t.string :ing1_metr
      t.integer :ingredient2
      t.float :ing2_quant
      t.string :ing2_metr
      t.integer :ingredient3
      t.float :ing3_quant
      t.string :ing3_metr
      t.integer :ingredient4
      t.float :ing4_quant
      t.string :ing4_metr
      t.integer :ingredient5
      t.float :ing5_quant
      t.string :ing5_metr
      t.float :total_calories
      t.float :total_proteins
      t.float :total_fats
      t.float :total_carbohydrates

      t.timestamps
    end
  end
end
