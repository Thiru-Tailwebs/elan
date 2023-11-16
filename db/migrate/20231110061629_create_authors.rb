class CreateAuthors < ActiveRecord::Migration[7.0]
  def change
    create_table :authors do |t|
      t.string :name
      t.boolean :active, default: true
      t.string :code
      t.text :image_data

      t.timestamps
    end
  end
end
