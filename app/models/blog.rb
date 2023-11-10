# == Schema Information
#
# Table name: blogs
#
#  id           :bigint           not null, primary key
#  description1 :text(65535)
#  description2 :text(65535)
#  image_data   :text(65535)
#  name         :string(255)
#  published_dt :date
#  slug         :text(65535)
#  state        :string(255)
#  title        :string(255)
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  author_id    :bigint           not null
#
# Indexes
#
#  index_blogs_on_author_id  (author_id)
#
# Foreign Keys
#
#  fk_rails_...  (author_id => authors.id)
#
class Blog < ApplicationRecord
  belongs_to :author
	has_many :blog_types, dependent: :destroy
	has_many :blogs, through: :blog_types
end
