class AddImageToCategory < ActiveRecord::Migration[7.0]
  def change
    add_column :categories, :image_data, :text, null: true
  end
end
