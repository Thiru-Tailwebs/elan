class CreateSummernoteImages < ActiveRecord::Migration[7.0]
  def change
    create_table :summernote_images do |t|
      t.text :image_data
      t.integer :referable_id
      t.string :referable_type

      t.timestamps
    end
  end
end
