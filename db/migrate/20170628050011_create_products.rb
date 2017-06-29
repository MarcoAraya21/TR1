class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :Nombre
      t.text :Descripcion
      t.integer :Precio
      t.integer :Stock
      t.string :Imagen
      t.references :Ptype, index: true, foreign_key: true
      t.references :Pcategory, index: true, foreign_key: true
      t.references :Status, index: true, foreign_key: true
      t.references :Trademark, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
