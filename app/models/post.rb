class Post < ApplicationRecord
    has_one_attached :image
    
    has_many :comment, -> { order "created_at DESC"}
end
