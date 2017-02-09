class RenameColumnToCartedProduct < ActiveRecord::Migration[5.0]
  def change
    rename_column :carted_products, :Order_id, :order_id
  end
end
