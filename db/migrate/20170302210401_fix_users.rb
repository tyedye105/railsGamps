class FixUsers < ActiveRecord::Migration[5.0]
  def change
    remove_column(:users, :lattitude)
    add_column(:users, :latitude, :float)
  end
end
