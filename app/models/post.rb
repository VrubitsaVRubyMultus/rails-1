class Post < ActiveRecord::Base
	has_many :comments
	has_many :categories_posts
    has_many :categories, through: :categories_posts
    belongs_to :user
    validates :title, :body, presence: true
    scope :reverse_order, ->(order) { order(created_at: order) }
    scope :published, -> { where(published: true) }
    scope :unpublished, -> { where(published: false) }



    def categories_heads
    # categories.map(&:title).join(', ')
    categories.pluck(:head).join(', ')
    end

    protected

    def send_notification
    # raise Exception
    end
end
