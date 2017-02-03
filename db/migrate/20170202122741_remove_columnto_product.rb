class RemoveColumntoProduct < ActiveRecord::Migration[5.0]
  def change
    remove_column :products, :string, :string
    remove_column :products, :product_id, :integer
  end
end
