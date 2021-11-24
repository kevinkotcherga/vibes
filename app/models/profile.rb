class Profile < ApplicationRecord
  belongs_to :user
  has_one :matching
end
