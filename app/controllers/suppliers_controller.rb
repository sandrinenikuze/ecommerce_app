class SuppliersController < ApplicationController

  def index
    @supplier
  end

    

  def show
    if params[:id] == "random"
      @supplier = supplier.all.sample
    else 
      @supplier = supplier.find_by(id: params[:id])
    end 
  end
  def new

  end

  def create 
   name = params[:name]
   email = params[:email]
   phone = params[:phone]
 
   supplier = supplier.new ({name: name, email: email, phone: phone})
   supplier.save 
   flash[:success] = "supplier Create"
   redirect_to "/suppliers"
  end 

  def edit
   @supplier = supplier.find_by(id: params[:id])
  end
  def update
   supplier = supplier.find_by(id: params[:id])
   supplier.name = params[:name]
   supplier.email =  params[:email]
   supplier.phone = params[:phone]
  
   supplier.save
   flash[:success] = "supplier update"
   redirect_to "/suppliers"

  end

  def destroy
   @supplier = supplier.find_by(id: params[:id])
   @supplier.destroy
   redirect_to "/suppliers"
 end
end
