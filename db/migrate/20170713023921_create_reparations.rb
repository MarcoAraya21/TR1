class CreateReparations < ActiveRecord::Migration
  def change
    create_table :reparations do |t|
      t.references :user, index: true, foreign_key: true
      t.references :cproduct, index: true, foreign_key: true
      t.text :Descripcion
      t.datetime :FechaI
      t.datetime :FechaF
      t.integer :PrecioBase
      t.integer :PrecioFinal
      t.boolean :Llamada

      t.timestamps null: false
    end
  end
end
