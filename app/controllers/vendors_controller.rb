class VendorsController < ApplicationController

  def index
    # session[:blah] = "weird"
    # session[:id] = "another"
    # raise session.inspect
    @vendors = Vendor.all
  end

  def old
    # @vendor = Vendor.find(1)
    # session[:id] = @vendor.id.to_i
    # session[:name] = @vendor.name
    # raise session.inspect
    @vendor = Vendor.find_by(name: params[:name])
    # session[:id] = @vendor.id.to_i
    # raise params.inspect
    if @vendor == nil
      redirect_to "/vendors/new"
    end
  end


  def new
    @vendor = Vendor.new
  end

  def create
    @vendor = Vendor.new(post_params)
    #session[:id] = @vendor.id
    if @vendor.save
      session[:id] = @vendor.id
      session[:name] = @vendor.name
      raise session.inspect
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
