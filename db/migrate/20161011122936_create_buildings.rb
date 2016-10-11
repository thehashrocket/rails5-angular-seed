class CreateBuildings < ActiveRecord::Migration[5.0]
  def change
    create_table :buildings do |t|
      t.string :address
      t.string :city
      t.string :name
      t.string :state
      t.string :zip
      t.string :userid

      t.timestamps
    end
  end
end
