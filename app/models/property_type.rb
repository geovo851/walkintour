class PropertyType < ActiveRecord::Base
  has_many :orders
  validates :title, presence: true
end
