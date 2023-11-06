# == Schema Information
#
# Table name: category_images
#
#  id          :bigint           not null, primary key
#  image_data  :text(65535)
#  priority    :integer          default(0)
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  category_id :bigint           not null
#
# Indexes
#
#  index_category_images_on_category_id  (category_id)
#
# Foreign Keys
#
#  fk_rails_...  (category_id => categories.id)
#
class CategoryImage < ApplicationRecord
  belongs_to :category
end
