class PropertyTypesController < ApplicationController

  def index
    @property_types = PropertyType.page(params[:page]).per(10)
    
    respond_to do |format|
      format.html
      format.js {}
    end
  end

  def show
    @property_type = PropertyType.find(params[:id])
  end

  def new
    @property_type = PropertyType.new
  end

  def edit
    @property_type = PropertyType.find(params[:id])
  end

  def create
    @property_type = PropertyType.new(property_type_params)
   
    if @property_type.save
      redirect_to property_types_path
    else
      render 'new'
    end
  end

  def update
    @property_type = PropertyType.find(params[:id])
   
    if @property_type.update(property_type_params)
      redirect_to property_types_path
    else
      render 'edit'
    end
  end
  
  def destroy
    @property_type = PropertyType.find(params[:id])
    @property_type.destroy
 
    redirect_to property_types_path
  end

  private
    def property_type_params
      params.require(:property_type).permit(:title)
    end
end
