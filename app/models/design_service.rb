# == Schema Information
#
# Table name: design_services
#
#  id         :bigint           not null, primary key
#  area       :string(255)
#  city       :string(255)
#  email      :string(255)
#  name       :string(255)
#  phone      :string(255)
#  status     :boolean          default(FALSE)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class DesignService < ApplicationRecord
end
