class CreateAacounts < ActiveRecord::Migration[7.0]
  def change
    create_table :aacounts do |t|
      t.string :title

      t.timestamps
    end
  end
end
