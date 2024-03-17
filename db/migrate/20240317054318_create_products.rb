class CreateProducts < ActiveRecord::Migration[6.0]
  def change

    create_table :products do |t|
      t.string :name, null: false
      t.text :description
      t.text :product_keywords
      t.string :permalink, null: false
      t.datetime :available_at
      t.datetime :deleted_at
      t.string :meta_keywords
      t.string :meta_description
      t.boolean :featured, default: false
      t.text :description_markup
      t.integer :img_url
      t.integer :main_description
      t.integer :price
      t.timestamps
    end

  end
end


