class Photo < ActiveRecord::Base
  has_many :orders
  validates :title, presence: true
end
