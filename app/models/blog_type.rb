# == Schema Information
#
# Table name: blog_types
#
#  id         :bigint           not null, primary key
#  active     :boolean          default(TRUE)
#  code       :string(255)
#  name       :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class BlogType < ApplicationRecord
	before_save :update_code

    private

        def update_code
        self.code = self.name.downcase.gsub(/[^a-zA-Z0-9\s]/, '').gsub(/\s+/, '_')
        end
end
