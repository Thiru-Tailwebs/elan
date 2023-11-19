class CreateInquiries < ActiveRecord::Migration[7.0]
  def change
    create_table :inquiries do |t|
      t.string :name
      t.string :email
      t.string :mobile
      t.string :status, default: false

      t.timestamps
    end
  end
end
