# == Schema Information
#
# Table name: categories
#
#  id          :bigint           not null, primary key
#  active      :boolean          default(TRUE)
#  code        :string(255)
#  description :text(65535)
#  image2_data :text(65535)
#  image_data  :text(65535)
#  name        :string(255)
#  priority    :integer          default(0)
#  slug        :string(255)
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
class Category < ApplicationRecord
	extend FriendlyId
	friendly_id :name, use: :slugged

    # Square Image
    include ImageUploader::Attachment(:image)
    # Vertical Image
    include ImageUploader::Attachment(:image2)

    has_many :category_images, dependent: :destroy
	before_save :update_code

    private

        def update_code
            self.code = self.name.downcase.gsub(/[^a-zA-Z0-9\s]/, '').gsub(/\s+/, '_')
        end
end
