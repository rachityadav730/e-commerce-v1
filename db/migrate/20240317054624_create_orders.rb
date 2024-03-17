class CreateOrders < ActiveRecord::Migration[6.0]
  def change
    create_table :orders do |t|
      t.string :number
      t.string :ip_address
      t.string :email
      t.string :state
      t.integer :user_id
      t.boolean :active, default: true, null: false
      t.boolean :shipped, default: false, null: false
      t.integer :shipments_count, default: 0
      t.datetime :calculated_at
      t.datetime :completed_at
      t.decimal :credited_amount, precision: 8, scale: 2, default: 0.0
    end
  end
end


