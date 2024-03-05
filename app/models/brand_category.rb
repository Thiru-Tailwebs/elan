# == Schema Information
#
# Table name: brand_categories
#
#  id         :bigint           not null, primary key
#  active     :boolean
#  code       :string(255)
#  image_data :text(65535)
#  name       :string(255)
#  priority   :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class BrandCategory < ApplicationRecord
    include ImageUploader::Attachment(:image)
    has_many :category_images, dependent: :destroy
	before_save :update_code

    private

        def update_code
        self.code = self.name.downcase.gsub(/[^a-zA-Z0-9\s]/, '').gsub(/\s+/, '_')
        end
end
