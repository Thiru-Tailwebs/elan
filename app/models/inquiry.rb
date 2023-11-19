# == Schema Information
#
# Table name: inquiries
#
#  id         :bigint           not null, primary key
#  email      :string(255)
#  mobile     :string(255)
#  name       :string(255)
#  status     :string(255)      default("0")
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Inquiry < ApplicationRecord
end
