class AddSquareImageToBlog < ActiveRecord::Migration[7.0]
  def change
    add_column :blogs, :square_image_data, :text
  end
end
