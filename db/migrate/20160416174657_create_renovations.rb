class CreateRenovations < ActiveRecord::Migration[5.0]
  def change
    create_table :renovations do |t|
      t.integer :contract_id
      t.datetime :start_date
      t.datetime :end_time

      t.timestamps
    end
  end
end
