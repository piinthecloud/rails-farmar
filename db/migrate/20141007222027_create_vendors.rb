class CreateVendors < ActiveRecord::Migration
  def change
    create_table :vendors do |t|
      t.string :name
      t.integer :market_id
      t.string :location

      t.timestamps
    end
  end
end
