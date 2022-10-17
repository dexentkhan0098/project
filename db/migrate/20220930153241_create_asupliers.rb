class CreateAsupliers < ActiveRecord::Migration[7.0]
  def change
    create_table :asupliers do |t|
      t.string :name
      t.integer :age
      t.integer :asuplier_id,foreign_key:true

      t.timestamps
    end
  end
end
