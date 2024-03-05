class CreateBookServices < ActiveRecord::Migration[7.0]
  def change
    create_table :book_services do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :phone
      t.string :service
      t.text :message
      t.string :status, default: false

      t.timestamps
    end
  end
end
