class CreateBaseIngredients < ActiveRecord::Migration[5.1]
  def change
    create_table :base_ingredients do |t|
      t.string :name
      t.float :calories
      t.float :proteins
      t.float :fats
      t.float :carbohydrates

      t.timestamps
    end
  end
end
