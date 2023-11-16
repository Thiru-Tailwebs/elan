class AddPriorityToCategory < ActiveRecord::Migration[7.0]
  def change
    add_column :categories, :priority, :integer, default: 0
  end
end
