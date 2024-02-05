class CreateVendorRegistrations < ActiveRecord::Migration[7.0]
  def change
    create_table :vendor_registrations do |t|
      t.text :image_data, null: true
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :phone
      t.text :address
      t.string :country
      t.boolean :status, default: false

      t.timestamps
    end
  end
end
