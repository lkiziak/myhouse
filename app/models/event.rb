class Event < ApplicationRecord

  belongs_to :group
  has_many :users


  validates :title, uniqueness: { case_sensitive: false }
  validates :title, presence: true

end
