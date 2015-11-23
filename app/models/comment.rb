class Comment < ActiveRecord::Base
	belongs_to :post
	validates :body, presence: true

    private

	def send_notification
    NotificationMailer.comment_notification(post.user, post, self).deliver_now
  end
end
