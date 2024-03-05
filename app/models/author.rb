# == Schema Information
#
# Table name: authors
#
#  id         :bigint           not null, primary key
#  active     :boolean          default(TRUE)
#  code       :string(255)
#  image_data :text(65535)
#  name       :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Author < ApplicationRecord
    include ImageUploader::Attachment(:image)
	before_save :update_code

    private

        def update_code
        self.code = self.name.downcase.gsub(/[^a-zA-Z0-9\s]/, '').gsub(/\s+/, '_')
        end
end
