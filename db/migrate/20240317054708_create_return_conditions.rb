class CreateReturnConditions < ActiveRecord::Migration[6.0]
  def change
    create_table :return_conditions do |t|
      t.text :product_keywords
      t.string :label
      t.string :description
      t.timestamps
    end
  end
end
