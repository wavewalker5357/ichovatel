class AddCategoryToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :category_id, :int
  end
end
