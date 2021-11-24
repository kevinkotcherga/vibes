class Profile < ApplicationRecord
  belongs_to :user
  has_one :matching, dependent: :destroy
end
