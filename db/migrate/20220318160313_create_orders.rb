class CreateOrders < ActiveRecord::Migration[7.0]
  def change
    create_table :orders do |t|
      t.integer :order_no
      t.date :date_of_order
      t.string :order_status
      t.string :billing_address
      t.string :shipping_address

      t.timestamps
    end
  end
end
