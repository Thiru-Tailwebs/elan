class ChangeStatusInInquiry < ActiveRecord::Migration[7.0]
  def change
    change_column :inquiries, :status, :boolean, default: false
  end
end
