class CreateRobots < ActiveRecord::Migration
  def change
    create_table :robots do |t|
      t.string :name
      t.string :owner
      t.string :serial_number
      t.string :specialty

      t.timestamps null: false
    end
  end
end
