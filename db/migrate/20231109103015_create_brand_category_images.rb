class CreateBrandCategoryImages < ActiveRecord::Migration[7.0]
  def change
    create_table :brand_category_images do |t|
      t.references :brand_category, null: false, foreign_key: true
      t.text :image_data
      t.integer :priority, default: 0

      t.timestamps
    end
  end
end
