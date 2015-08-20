class CreateAnimals < ActiveRecord::Migration
  def change
    create_table :animals do |t|
      t.string :name
      t.string :type_of_animal
      t.string :breed
      t.integer :age
      t.integer :weight

      t.timestamps null: false
    end
  end
end
