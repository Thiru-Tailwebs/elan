class AddDescriptionToCategory < ActiveRecord::Migration[7.0]
  def change
    add_column :categories, :description, :text, null: true
  end
end
