class User < ActiveRecord::Base
	devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :confirmable

  has_one :profile
  has_many :posts

  def author_of?(object)
    id == object.user_id
  end
end
