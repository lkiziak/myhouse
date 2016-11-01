class User < ActiveRecord::Base

  has_secure_password

  has_many :events
  has_many :groups

  validates :name, presence: true
  validates :email, presence: true, uniqueness: true
  validates :password_confirmation, presence: true
end
