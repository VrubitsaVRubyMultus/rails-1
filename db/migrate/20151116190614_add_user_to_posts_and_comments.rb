class AddUserToPostsAndComments < ActiveRecord::Migration
  def change
  	add_belongs_to :posts, :user, index: true
  	add_belongs_to :comments, :user, index: true
  end
end
