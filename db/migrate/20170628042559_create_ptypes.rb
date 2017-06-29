class CreatePtypes < ActiveRecord::Migration
  def change
    create_table :ptypes do |t|
      t.string :Nombre

      t.timestamps null: false
    end
  end
end
