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
	extend FriendlyId
	friendly_id :name, use: :slugged
    include ImageUploader::Attachment(:image)

  	belongs_to :author
	# has_many :blog_types, dependent: :destroy
	# has_many :blogs, through: :blog_types
	has_many :blog_blog_types
	has_many :blog_types , through: :blog_blog_types

	state_machine :state , :initial => :draft do
		state :draft , :value => "Draft"
		state :published , value: "Published"
		state :removed, value: "Removed"

		event :record_publish do
			transition [:draft] => :published
		end

		event :record_remove do
			transition [:draft, :published] => :removed
		end

		before_transition :on => :record_publish, :do => [:set_published_at]
	end

	def set_published_at
		self.published_dt = DateTime.now
	end

	def update_associations(params)
		puts("===> params:", params)
		self.blog_types = BlogType.find(
			params["blog_types"].reject(&:empty?)
		) if params["blog_types"].present?
		self.save!
	end
end
