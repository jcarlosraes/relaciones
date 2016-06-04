class CreateLocations < ActiveRecord::Migration[5.0]
  def change
    create_table :locations do |t|
      t.string :department, limit: 45
      t.string :responsable, limit: 45
      t.string :email, limit: 45

      t.timestamps
    end
  end
end
