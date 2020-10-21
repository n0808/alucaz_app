class CreateImages < ActiveRecord::Migration[6.0]
  def change
    create_table :images do |t|
      t.string :src
      t.references :human, foreign_key: true
      t.timestamps
    end
  end
end
