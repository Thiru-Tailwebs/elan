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
end
