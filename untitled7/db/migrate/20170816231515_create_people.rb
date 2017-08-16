class CreatePeople < ActiveRecord::Migration
  def change
    create_table :people do |t|
      t.string :name
      t.string :identidad
      t.integer :age
      t.date :birthdate

      t.timestamps null: false
    end
  end
end
