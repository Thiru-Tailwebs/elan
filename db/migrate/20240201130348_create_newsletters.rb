class CreateNewsletters < ActiveRecord::Migration[7.0]
  def change
    create_table :newsletters do |t|
      t.string :email
      t.boolean :active, default: true

      t.timestamps
    end
  end
end
