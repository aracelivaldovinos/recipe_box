class CreateRecipes < ActiveRecord::Migration[5.2]
  def change
    create_table :recipes do |t|
      t.string :name
      t.string :instructions
      t.integer :rating
      t.integer :quantity
      t.timestamps
    end
  end
end
