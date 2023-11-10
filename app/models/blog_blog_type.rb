# == Schema Information
#
# Table name: blog_blog_types
#
#  id           :bigint           not null, primary key
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  blog_id      :bigint           not null
#  blog_type_id :bigint           not null
#
# Indexes
#
#  index_blog_blog_types_on_blog_id       (blog_id)
#  index_blog_blog_types_on_blog_type_id  (blog_type_id)
#
# Foreign Keys
#
#  fk_rails_...  (blog_id => blogs.id)
#  fk_rails_...  (blog_type_id => blog_types.id)
#
class BlogBlogType < ApplicationRecord
  belongs_to :blog
  belongs_to :blog_type
end
