class Order < ActiveRecord::Base
  belongs_to :property_type
  belongs_to :photo
  validates :property_type_id, :photo_id, presence: true
end
