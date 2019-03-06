class CreateZones < ActiveRecord::Migration[5.1]
  def change
    create_table :zones do |t|
      t.string :nom
      t.string :clima
      t.decimal :temperatura
      t.decimal :humitat

      t.timestamps
    end
  end
end
