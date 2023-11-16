# == Schema Information
#
# Table name: clientele_images
#
#  id         :bigint           not null, primary key
#  active     :boolean
#  image_data :text(65535)
#  priority   :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class ClienteleImage < ApplicationRecord
    include ImageUploader::Attachment(:image)
end
