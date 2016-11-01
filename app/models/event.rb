class Event < ApplicationRecord

  has_many :groups
  has_many :users


  validates :title, uniqueness: { case_sensitive: false }
  validates :title, presence: true

end
