class CreateContactUs < ActiveRecord::Migration[7.0]
  def change
    create_table :contact_us do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :mobile
      t.text :message
      t.string :status

      t.timestamps
    end
  end
end
