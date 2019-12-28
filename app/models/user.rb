class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :recipes
  has_many :comments

  validates :username, presence: true, uniqueness: true, length: {minimum: 5}, on: :create
  validates :first_name, :last_name, presence: true, length: { maximum: 30 }

end
