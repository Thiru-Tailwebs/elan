class AddUpdateStatusFieldToBookService < ActiveRecord::Migration[7.0]
  def change
    change_column :book_services, :status, :boolean, default: false
  end
end
