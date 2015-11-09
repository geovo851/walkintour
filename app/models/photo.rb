class Photo < ActiveRecord::Base
  has_many :orders
end
