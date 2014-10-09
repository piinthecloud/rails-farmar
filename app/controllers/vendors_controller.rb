class VendorsController < ApplicationController

  def index
    @vendors = Vendor.all
  end

  def old
    @vendor = Vendor.find_by(name: params[:name])
    if @vendor == nil
      redirect_to "/vendors/new"
    end
  end


  def new
    @vendor = Vendor.new
  end

  def create
    @vendor = Vendor.new(post_params)
    if @vendor.save
      redirect_to root_path
    else
      render :new
    end

  end

  def edit
    find_method
  end

  def update
    find_method
    if @vendor.update(post_params)
      redirect_to root_path
    else
      render :edit
    end
  end



  private

  def post_params
    params.require(:vendor).permit(:name, :market_id, :location)
  end

  def find_method
    @vendor = Vendor.find(params[:id])
  end

end
