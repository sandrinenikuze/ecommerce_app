class ProductsController < ApplicationController
  def index
    sort_variable = params[:sort]
    if sort
      @products = Product.price.order(sort_variable: :desc)
    else
    @products = Product.all
  end
  end

  def show
    @product = Product.find_by(id: params[:id])
  end
   def new
     
   end

   def create 
     name = params[:name]
     price = params[:price]
     description = params[:description]
     image = params[:image]
     product = Product.new ({name: name, price: price, description: description, image:image})
     product.save 
     flash[:success] = "Product Create"
     redirect_to "/products"
   end 

   def edit
     @product = Product.find_by(id: params[:id])
   end
   def update
     product = Product.find_by(id: params[:id])
     product.name = params[:name]
     product.price =  params[:price]
     product.description = params[:description]
     product.image = params[:image]
     product.save
     flash[:success] = "Product update"
     redirect_to "/products"

   end

   def destroy
     @product = Product.find_by(id: params[:id])
     @product.destroy
     flash[:warning] = "Product deleted"
     redirect_to "/products"
   end
end
