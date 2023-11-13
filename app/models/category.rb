# == Schema Information
#
# Table name: categories
#
#  id         :bigint           not null, primary key
#  active     :boolean          default(TRUE)
#  code       :string(255)
#  name       :string(255)
#  priority   :integer          default(0)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Category < ApplicationRecord
    has_many :category_images, dependent: :destroy
	before_save :update_code

    private

        def update_code
            self.code = self.name.downcase.gsub(/[^a-zA-Z0-9\s]/, '').gsub(/\s+/, '_')
        end
end
