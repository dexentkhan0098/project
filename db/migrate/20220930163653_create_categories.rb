class CreateCategories < ActiveRecord::Migration[7.0]
  def change
    create_table :categories do |t|
      t.integer :price
      t.string :color
      t.string :size
      t.integer :product_id, foreign_key:true

      t.timestamps
    end
  end
end
