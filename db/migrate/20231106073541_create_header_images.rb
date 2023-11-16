class CreateHeaderImages < ActiveRecord::Migration[7.0]
  def change
    create_table :header_images do |t|
      t.string :name
      t.string :description
      t.boolean :active, default: true
      t.text :image_data

      t.timestamps
    end
  end
end
