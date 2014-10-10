class ProductsController < ApplicationController


  def index
    @products = Product.all

  end

  def new
    @product = Product.new

  end

  def show
    @product = Product.find(params[:id])
  end

  def create
    @product = Product.new(post_params)
    if @product.save
      redirect_to "/products"
    else
    end
  end

  def edit
    @product = Product.find(params[:id])
  end

  def update
    @product = Product.find(params[:id])
    if @product.update(post_params)
      redirect_to "/products"
    else
      # render :edit
    end
  end

  def destroy

    @product = Product.find(params[:id])
    if @product.destroy
      redirect_to "/products"
    end
  end

  private

  def post_params
    params.require(:product).permit(:product_name, :vendor_id, :number_of_sales)
  end

  def find_method
    @product = Product.find(params[:id])
  end



end
