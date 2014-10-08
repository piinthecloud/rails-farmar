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
    @vendor = Vendor.new(params.require(:vendor).permit(:name, :market_id, :location))
    if @vendor.save
      redirect_to root_path
    else
      # render :new
    end

  end



end
