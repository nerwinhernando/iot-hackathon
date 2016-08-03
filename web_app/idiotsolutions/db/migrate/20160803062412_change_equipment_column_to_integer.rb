# rails g migration ChangeEquipmentColumnToInteger
class ChangeEquipmentColumnToInteger < ActiveRecord::Migration
  def change
  	change_column :meeting_rooms, :equipment, :integer
  	rename_column :meeting_rooms, :equipment, :equipment_id
  end
end
