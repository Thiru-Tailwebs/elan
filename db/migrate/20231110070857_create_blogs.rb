class CreateBlogs < ActiveRecord::Migration[7.0]
  def change
    create_table :blogs do |t|
      t.string :title
      t.string :name
      t.string :state
      t.text :slug
      t.text :description1
      t.text :description2
      t.text :image_data
      t.references :author, null: false, foreign_key: true
      t.date :published_dt

      t.timestamps
    end
  end
end
