# == Schema Information
#
# Table name: brand_category_images
#
#  id                :bigint           not null, primary key
#  image_data        :text(65535)
#  priority          :integer          default(0)
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#  brand_category_id :bigint           not null
#
# Indexes
#
#  index_brand_category_images_on_brand_category_id  (brand_category_id)
#
# Foreign Keys
#
#  fk_rails_...  (brand_category_id => brand_categories.id)
#
class BrandCategoryImage < ApplicationRecord
  belongs_to :brand_category
  include ImageUploader::Attachment(:image)

	def update_associations params
    qry_category = BrandCategory.find(params['brand_category_id'])

    params['image'].each do |i|
      if i.present?
        BrandCategoryImage.create(
          brand_category: qry_category,
          image: i
        )
      end
    end
	end
end