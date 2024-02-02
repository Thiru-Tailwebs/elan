# == Schema Information
#
# Table name: book_services
#
#  id         :bigint           not null, primary key
#  email      :string(255)
#  first_name :string(255)
#  last_name  :string(255)
#  message    :text(65535)
#  phone      :string(255)
#  service    :string(255)
#  status     :string(255)      default("0")
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class BookService < ApplicationRecord
end
