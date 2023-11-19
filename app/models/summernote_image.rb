# == Schema Information
#
# Table name: summernote_images
#
#  id             :bigint           not null, primary key
#  image_data     :text(65535)
#  referable_type :string(255)
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#  referable_id   :integer
#
class SummernoteImage < ApplicationRecord
    include ImageUploader::Attachment(:image)
end
