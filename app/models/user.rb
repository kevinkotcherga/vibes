class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :question_users
  has_many :responses, through: :question_users
  has_one :profile, dependent: :destroy
  has_many :messages, dependent: :destroy
  has_many :chatrooms, through: :messages
  has_many :matching, dependent: :destroy
end
