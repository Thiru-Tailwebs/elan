class ChangeStatusInContact < ActiveRecord::Migration[7.0]
  def change
    change_column :contacts, :status, :boolean, default: false
  end
end
