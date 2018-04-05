class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :title
      t.string :author
      t.decimal :price
      t.string :category
      t.string :image

      t.timestamps null: false
    end
  end
end
