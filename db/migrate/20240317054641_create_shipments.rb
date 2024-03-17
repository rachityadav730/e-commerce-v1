class CreateShipments < ActiveRecord::Migration[6.0]
  def change
    create_table :shipments do |t|
      t.integer :order_id
      t.string :tracking
      t.string :number, null: false
      t.string :state, null: false
      t.datetime :shipped_at
      t.boolean :active, default: true, null: false
      t.timestamps
    end
  end
end
