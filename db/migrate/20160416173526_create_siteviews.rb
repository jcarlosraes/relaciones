class CreateSiteviews < ActiveRecord::Migration[5.0]
  def change
    create_table :siteviews do |t|
      t.integer :renovation_id
      t.datetime :visit_date
      t.boolean :completed

      t.timestamps
    end
  end
end
