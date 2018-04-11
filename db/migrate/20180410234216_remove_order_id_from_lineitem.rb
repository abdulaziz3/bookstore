class RemoveOrderIdFromLineitem < ActiveRecord::Migration
  def change
    remove_column :lineitems, :order_id, :integer
  end
end
