class CreateCategoryImages < ActiveRecord::Migration[7.0]
  def change
    create_table :category_images do |t|
      t.references :category, null: false, foreign_key: true
      t.text :image_data
      t.integer :priority, default: 0

      t.timestamps
    end
  end
end
