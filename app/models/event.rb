class Event < ApplicationRecord

  #has_attached_file :image, styles: { medium: "300x300>", thumb: "100x100>" }  #, default_url: "/images/:style/missing.png"
  #validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/

  has_many :users
  has_many :group
  belongs_to :user

  validates :title, presence: true
  validates :description, presence: true
  validates :location, presence: true
  validates :contact, presence: true

end
