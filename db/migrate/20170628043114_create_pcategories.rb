class CreatePcategories < ActiveRecord::Migration
  def change
    create_table :pcategories do |t|
      t.string :Nombre

      t.timestamps null: false
    end
  end
end
