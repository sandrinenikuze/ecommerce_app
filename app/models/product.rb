class Product < ApplicationRecord
  def product_list
    products.split ( ", ")
  end
end
