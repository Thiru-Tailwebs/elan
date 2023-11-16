class CreateBrandCategories < ActiveRecord::Migration[7.0]
  def change
    create_table :brand_categories do |t|
      t.string :name
      t.boolean :active, defualt: true
      t.string :code
      t.integer :priority, defualt: 0
      t.text :image_data, null: true

      t.timestamps
    end
  end
end
