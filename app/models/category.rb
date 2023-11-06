# == Schema Information
#
# Table name: categories
#
#  id         :bigint           not null, primary key
#  active     :boolean          default(TRUE)
#  name       :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Category < ApplicationRecord
    has_many :category_images

	# def update_associations category_params
	# 	self.category_images = Category.find(category_params["category"].reject(&:empty?)) if category_params["category"].present?
	# 	self.countries = Country.find(master_class_params["countries"].reject(&:empty?)) if master_class_params["countries"].present?
	# 	self.save!
	# end
end
