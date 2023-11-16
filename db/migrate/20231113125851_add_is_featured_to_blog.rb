class AddIsFeaturedToBlog < ActiveRecord::Migration[7.0]
  def change
    add_column :blogs, :is_featured, :boolean, default: false
  end
end
