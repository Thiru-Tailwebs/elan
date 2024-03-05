class CreateBlogTypes < ActiveRecord::Migration[7.0]
  def change
    create_table :blog_types do |t|
      t.string :name
      t.boolean :active, default: true
      t.string :code

      t.timestamps
    end
  end
end
