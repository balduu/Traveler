class Post < ApplicationRecord
    has_one_attached :image
    has_many :likes, dependent: :destroy
    belongs_to :user
    has_many :comment, -> { order "created_at DESC"}
    def self.search(search)
		if search
			where(["title LIKE ?","%#{search}%"])
		else
			all
		end
	end
 def total_like
       Like.where(post_id: self.id).count
    end
end
