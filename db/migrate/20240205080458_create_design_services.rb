class CreateDesignServices < ActiveRecord::Migration[7.0]
  def change
    create_table :design_services do |t|
      t.string :name
      t.string :phone
      t.string :email
      t.string :area
      t.string :city
      t.boolean :status, default: false

      t.timestamps
    end
  end
end
