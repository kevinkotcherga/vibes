class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :question_users
  has_many :responses, through: :question_users
  has_one :profile, dependent: :destroy
  has_many :messages, dependent: :destroy

  has_many :created_matchings, foreign_key: "from_user_id", class_name: 'Matching', dependent: :destroy
  has_many :received_matchings, foreign_key: "to_user_id",  class_name: 'Matching', dependent: :destroy

  has_many :chatrooms, through: :created_matchings
  has_many :chatrooms, through: :received_matchings

  has_one :profile, dependent: :destroy

  def matched_users
    User.joins(:responses)
        .where(responses: { id: responses.pluck(:id) })
        .where.not(users: { id: id }).distinct
  end

  def pick_user
    users = matched_users
    users.sample
  end
end
