class CreateShippingCategories < ActiveRecord::Migration[6.0]
  def change
    create_table :shipping_categories do |t|
      t.string :name, null: false
      t.timestamps
    end
  end
end
