class Group < ApplicationRecord


  has_many :users
  has_many :events
  belongs_to :user


  validates :group_name, presence: true
  validates :website_url, presence: true
  validates :group_email, presence: true
end
