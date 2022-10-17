class CreatePlars < ActiveRecord::Migration[7.0]
  def change
    create_table :plars do |t|
      t.string :name
      t.string :child_name
      t.integer :age
      t.integer :plar_id,foreign_key: true

      t.timestamps
    end
  end
end
