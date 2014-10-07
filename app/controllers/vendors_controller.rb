class VendorsController < ApplicationController

  def index
    @vendor = Vendor.all

  end

  def new
    @vendor = Vendor.new
  end

  def create
    @vendor = Vendor.new(params.require(:vendor).permit(:name, :market_id, :location))
    if @vendor.save
      redirect_to root_path
    else

    end

  end



end
