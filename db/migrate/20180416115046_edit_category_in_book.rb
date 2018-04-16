class EditCategoryInBook < ActiveRecord::Migration
  def change
    remove_column :books, :category, :string
  end
end
