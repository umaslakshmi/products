class ProductsController < ApplicationController
  def index
  	@products = Product.all.joins(:category)
  	# render json: @products
  	# @categories = @products.select("categories.name as category_name")
  end

  def show
  	@product = Product.joins(:category).where(id: params[:id])[0]
  	@comments = Comment.all.where(product: Product.find(params[:id]))
  	# render json: @comments
  	# render json: @product
  end

  def new
  	@product = Product.new
  	@categories = Category.all
  end

  def create
  	@product = Product.new(product_params)
  	# render json: @product
  	@product.save
  	redirect_to '/products'
  end

  def edit
  	@product = Product.joins(:category).where(id: params[:id])[0]
  	@categories = Category.all
  end

  def update
  	@product = Product.find(params[:id])
  	@product.update_attributes(product_params)
  	redirect_to '/products'
  end

  def destroy
  	Product.find(params[:id]).destroy
  	redirect_to '/products'
  end

  private
  def product_params
  	params.require(:product).permit(:name, :description, :pricing, :category_id)
  end
end
