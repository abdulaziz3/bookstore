class AddLNameToUser < ActiveRecord::Migration
  def change
    add_column :users, :l_name, :string
  end
end
