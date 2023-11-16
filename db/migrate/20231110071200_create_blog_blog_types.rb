class CreateBlogBlogTypes < ActiveRecord::Migration[7.0]
  def change
    create_table :blog_blog_types do |t|
      t.references :blog, null: false, foreign_key: true
      t.references :blog_type, null: false, foreign_key: true

      t.timestamps
    end
  end
end
