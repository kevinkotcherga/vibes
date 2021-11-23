class Profile < ApplicationRecord
  has_one :user
  belongs_to :matching
end
