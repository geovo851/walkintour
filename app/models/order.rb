class Order < ActiveRecord::Base
  belongs_to :property_type
  belongs_to :photo
end
