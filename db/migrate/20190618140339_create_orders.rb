class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.references :user, foreign_key: true
      t.references :billing_address, index: true, foreign_key: {to_table: :addresses}
      t.references :shipping_address, index: true, foreign_key: {to_table: :addresses}

      t.timestamps
    end
  end
end
