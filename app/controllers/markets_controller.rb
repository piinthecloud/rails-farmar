class MarketsController < ApplicationController
  def new
    @market = Market.new
  end

  def show
    @market = Market.find(params[:id])
  end

  def index
    @markets = Market.all
  end

  def create
    @market = Market.new(post_params)
    if @market.save
      redirect_to "/markets"
    else
    end
  end

  def update
    @market = Market.find(params[:id])
    if @market.update(post_params)
      redirect_to "/markets"
    else
    end
  end

  def destroy
    @market = Market.find(params[:id])
    if @market.destroy
      redirect_to root_path
    end
  end

  def edit
    @market = Market.find(params[:id])
  end

  private

  def post_params
    params.require(:market).permit(:name, :location)
  end
end
