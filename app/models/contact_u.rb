# == Schema Information
#
# Table name: contact_us
#
#  id         :bigint           not null, primary key
#  email      :string(255)
#  first_name :string(255)
#  last_name  :string(255)
#  message    :text(65535)
#  mobile     :string(255)
#  status     :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class ContactU < ApplicationRecord
end
