class CreateContracts < ActiveRecord::Migration[5.0]
  def change
    create_table :contracts do |t|
      t.integer :device_id
      t.integer :supplier_id
      t.string :contract_no, limit: 45
      t.string :description, limit: 45

      t.timestamps
    end
  end
end
