class RemoveProductIdAndQuantityFrom < ActiveRecord::Migration[7.0]
  def change
    remove_column :orders, :product_id
  end

  def change
    remove_column :orders, :quantity
  end
end
