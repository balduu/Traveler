class Post < ApplicationRecord
    has_one_attached :image
    
    has_many :comment, -> { order "created_at DESC"}
    def self.search(search)
		if search
			where(["title LIKE ?","%#{search}%"])
		else
			all
		end
	end
end
