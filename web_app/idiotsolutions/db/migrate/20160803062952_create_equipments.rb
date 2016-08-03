class CreateEquipments < ActiveRecord::Migration
  def change
    create_table :equipments do |t|
      t.string :resources
      t.string :comments

      t.timestamps null: false
    end
  end
end
