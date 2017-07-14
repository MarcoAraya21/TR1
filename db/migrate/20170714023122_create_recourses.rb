class CreateRecourses < ActiveRecord::Migration
  def change
    create_table :recourses do |t|
      t.references :reparation, index: true, foreign_key: true
      t.references :product, index: true, foreign_key: true
      t.datetime :Fecha
      t.integer :Cantidad

      t.timestamps null: false
    end
  end
end
