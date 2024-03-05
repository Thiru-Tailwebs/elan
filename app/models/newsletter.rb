# == Schema Information
#
# Table name: newsletters
#
#  id         :bigint           not null, primary key
#  active     :boolean          default(TRUE)
#  email      :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Newsletter < ApplicationRecord
end
