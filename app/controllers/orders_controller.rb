class OrdersController < ApplicationController
  before_action :set_order

  def property_type
    @property_types = PropertyType.all
    @property_type_id = (@order.property_type == nil) ? 1 : @order.property_type.id

    respond_to do |format|
      format.html
      format.js
    end
  end

  def about_property
    if params[:id]
      @order.property_type_id = params[:id]
      @order.save
    end

    respond_to do |format|
      format.html
      format.js
    end
  end

  def exterior
    respond_to do |format|
      format.html
      format.js
    end
  end

  def still_photo
    @photos = Photo.all
    @photo_id = (@order.photo == nil) ? 1 : @order.photo.id
    if params[:id]
      @order.exterior_tour = params[:id]
      @order.save
    end
    respond_to do |format|
      format.html
      format.js
    end
  end

  def floor_plan
    @photo_id = (@order.photo == nil) ? 1 : @order.photo.id
    if params[:id]
      @order.photo_id = params[:id]
      @order.save
    end
    respond_to do |format|
      format.html
      format.js
    end
  end

  def custome_domain
    if params[:id]
      @order.floor_plan = params[:id]
      @order.save
    end
    respond_to do |format|
      format.html
      format.js
    end
  end

  def review
    if params[:id]
      @order.custome_domain = params[:id]
      @order.save
    end
    respond_to do |format|
      format.html
      format.js
    end
  end

  def update
    @order = Order.find(params[:id])
    @order.update(order_params)
    redirect_to exterior_path
  end

  private

    def set_order
      @order = Order.find(session[:order_id])
    rescue ActiveRecord::RecordNotFound
      @order = Order.create
      session[:order_id] = @order.id
    end

    def order_params
      params.require(:order).permit(:property_type, :property_address, :sqft,
                                    :number_of_units, :exterior_tour,
                                    :floor_plan, :still_photo, :custome_domain,
                                    :detach_space)
    end
end
