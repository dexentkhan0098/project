class CreateProducts < ActiveRecord::Migration[7.0]
  def change
    create_table :products do |t|
      t.string :name
      t.string :title
      t.integer :release_date
      

      t.timestamps
    end
  end
end
