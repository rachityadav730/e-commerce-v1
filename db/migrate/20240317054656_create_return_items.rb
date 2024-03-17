class CreateReturnItems < ActiveRecord::Migration[6.0]
  def change
    create_table :return_items do |t|
      t.integer :order_item_id, null: false
      t.boolean :returned, default: false
      t.timestamps
    end
  end
end
