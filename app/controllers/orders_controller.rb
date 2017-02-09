class OrdersController < ApplicationController

  def create
  product = Product.find_by(id: params[:product_id])
     subtotal= quantity* product.price
     tax = quantity* product.tax
     total = subtotal + tax
     order = Order.new(user_id:current_user.id, product_id: product.id, subtotal: subtotal, tax:tax, total:total)
     if order.save
       flash[:success]= "Thanks"
       redirect_to "/orders/#{order.id}"
     else
       flash[:danger] = "order Not Created"
       redirect_to "/products/#{product.id}"
     end 
end
  
  




