class CreateHumen < ActiveRecord::Migration[6.0]
  def change
    create_table :humen do |t|
      t.string :name, null: false
      t.integer :price, null: false
      t.text :explain, null: false
      t.string :area, null: false
      t.integer :prefecture_id, null: false
      t.integer :gender_id, null: false
      t.integer :technique_id, null: false
      t.integer :history_id, null: false
      t.timestamps
    end
  end
end
