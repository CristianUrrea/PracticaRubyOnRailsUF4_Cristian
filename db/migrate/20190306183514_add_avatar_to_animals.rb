class AddAvatarToAnimals < ActiveRecord::Migration[5.1]
  def change
    add_column :animals, :avatar, :string
  end
end