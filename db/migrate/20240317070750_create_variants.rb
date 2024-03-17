class CreateVariants < ActiveRecord::Migration[6.0]
  def change
    create_table :variants do |t|
      t.integer :product_id, null: false
      t.string :sku, null: false
      t.string :name
      t.decimal :price, precision: 8, scale: 2, default: "0.0", null: false
      t.decimal :cost, precision: 8, scale: 2, default: "0.0", null: false
      t.datetime :deleted_at
      t.boolean :master, default: false, null: false
      t.timestamps
    end
  end
end
