class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.float :lattitude
      t.float :longitude
      t.string :name
      t.string :address
      t.boolean :is_cursed, :default => false
    end
  end
end
