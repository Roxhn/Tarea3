class CreateAnimales < ActiveRecord::Migration
  def change
    create_table :animales do |t|
      t.string :Animal
      t.integer :Edad
      t.date :FechaEnac

      t.timestamps null: false
    end
  end
end
