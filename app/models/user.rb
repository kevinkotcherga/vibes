class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :responses, through: :question_users
  has_one :profile
  has_many :messages
  has_many :chatrooms, through: :messages
  has_many :matching
  belongs_to :matching
end
