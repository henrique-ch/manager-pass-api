class Password < ApplicationRecord
  has_one :user
  has_one :category
end
