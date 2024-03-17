class CreateAddresses < ActiveRecord::Migration[6.0]
  def change
    create_table :addresses do |t|
      t.string :first_name
      t.string :last_name
      t.string :address1, null: false
      t.string :address2
      t.string :city, null: false
      t.string :state_name
      t.string :zip_code, null: false
      t.string :alternative_phone
      t.string :country
      t.boolean :active, default: true
      t.timestamps
    end
  end
end
