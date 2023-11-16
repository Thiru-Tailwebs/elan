class AddImage2ToCategory < ActiveRecord::Migration[7.0]
  def change
    add_column :categories, :image2_data, :text
  end
end
