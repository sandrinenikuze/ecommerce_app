class ProductsController < ApplicationController
    def index

      if params[:sort] 
        @products = Product.all.order(price: params[:sort])
      elsif params[:filter] =="discount"
        @products = Product.where("price <= ?", 100)

      else
        @products = Product.all
      end

      @Product= Product.all
      if params[:search]
        @products = Product.search(name: params[:search])
      else
        @Products= Product.all
      end 
    end
    

  def show
    if params[:id] == "random"
      @product = Product.all.sample
    else 
      @product = Product.find_by(id: params[:id])
    end 
  end
  def new
   @suppliers = Supplier.all
  end

  def create 
   name = params[:name]
   price = params[:price]
   description = params[:description]
   product = Product.new ({name: name, price: price, description: description, suppplier_id:suppplier_id})
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
   product.suppplier_id = params[:suppplier_id]
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
  
 def search
    search_query = params[:search_input]
    @products = Product.where("name LIKE ? OR description LIKE ?", "%#{search_query}%", "%#{search_query}%")
    if @products.empty?
      flash[:info] = "No products found in search"
    end
    render :index
  end
end
