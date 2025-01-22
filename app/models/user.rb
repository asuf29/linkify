class User < ApplicationRecord
  validates :first_name, :last_name, presence: true
  validates :username, presence: true, uniqueness: true

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
