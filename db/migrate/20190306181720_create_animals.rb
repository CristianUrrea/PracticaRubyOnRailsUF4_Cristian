class CreateAnimals < ActiveRecord::Migration[5.1]
  def change
    create_table :animals do |t|
      t.string :nom
      t.string :raza
      t.references :zone, foreign_key: true
      t.string :any_naixement
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
