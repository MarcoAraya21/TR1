class CreateCproducts < ActiveRecord::Migration
  def change
    create_table :cproducts do |t|
      t.string :Nombre
      t.text :Descripcion
      t.string :Imagen
      t.references :User, index: true, foreign_key: true
      t.references :Pcategory, index: true, foreign_key: true
      t.references :Status, index: true, foreign_key: true
      t.references :Trademark, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
