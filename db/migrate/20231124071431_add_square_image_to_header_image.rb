class AddSquareImageToHeaderImage < ActiveRecord::Migration[7.0]
  def change
    add_column :header_images, :square_image_data, :text
  end
end
