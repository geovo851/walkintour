module OrdersHelper

  def active_property_type property_type_id
    return 'active' if @order.property_type == nil && property_type_id == 1
    (@order.property_type == nil || @order.property_type.id != property_type_id) ? '' : 'active'
  end

  def active_still_photo photo_id
    return 'active' if @order.photo == nil && photo_id == 1
    (@order.photo == nil || @order.photo.id != photo_id) ? '' : 'active'
  end
end
