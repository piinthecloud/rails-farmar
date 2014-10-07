class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.integer :vendor_id
      t.string :product_name
      t.integer :number_of_sales

      t.timestamps
    end
  end
end
