class CreateClienteleImages < ActiveRecord::Migration[7.0]
  def change
    create_table :clientele_images do |t|
      t.text :image_data
      t.boolean :active, defualt: true
      t.integer :priority

      t.timestamps
    end
  end
end
