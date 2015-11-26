class AddFieldsToCategoriesPosts < ActiveRecord::Migration
  def change
  	add_belongs_to :categories_posts, :post, index: true
  	add_belongs_to :categories_posts, :category, index: true
  end
end
