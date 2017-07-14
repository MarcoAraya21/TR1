class CreateDetails < ActiveRecord::Migration
  def change
    create_table :details do |t|
      t.references :sale, index: true, foreign_key: true
      t.references :product, index: true, foreign_key: true
      t.integer :Cantidad

      t.timestamps null: false
    end
  end
end
