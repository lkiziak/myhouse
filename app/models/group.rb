class Group < ApplicationRecord


  has_many :users
  has_many :events

  validates :group_name, presence: true

end
