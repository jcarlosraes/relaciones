class CreateDevices < ActiveRecord::Migration[5.0]
  def change
    create_table :devices do |t|
      t.string :name, limit: 45
      t.string :unam_stock_number, limit: 45
      t.integer :location_id

      t.timestamps
    end
  end
end
