# == Schema Information
#
# Table name: header_images
#
#  id                :bigint           not null, primary key
#  active            :boolean          default(TRUE)
#  description       :string(255)
#  image_data        :text(65535)
#  name              :string(255)
#  square_image_data :text(65535)
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#
class HeaderImage < ApplicationRecord
    include ImageUploader::Attachment(:image)
    include ImageUploader::Attachment(:square_image)
end
