class CreateAnimals < ActiveRecord::Migration
  def change
    create_table :animals do |t|
      t.string :nombre
      t.string :tipo
      t.datetime :nacimiento
      t.string :origen
      t.text :comentarios

      t.timestamps null: false
    end
  end
end
