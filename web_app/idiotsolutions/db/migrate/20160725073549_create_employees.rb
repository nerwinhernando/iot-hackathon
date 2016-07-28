class CreateEmployees < ActiveRecord::Migration
  def change
    create_table :employees do |t|
      t.string :first_name
      t.string :last_name
      t.integer :emp_no
      t.string :gender
      t.string :contact_no

      t.timestamps null: false
    end
  end
end
