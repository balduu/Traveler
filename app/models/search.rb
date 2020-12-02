class Search < ApplicationRecord

	
	def search_post
		posts = Post.all
		
		posts = posts.where(["title LIKE ?","%#{keywords}%"]) if keywords.present?
		posts = posts.where(["writer LIKE ?",writer]) if writer.present?
		posts = posts.where(["location LIKE ?",location]) if location.present?
		posts = posts.where(["estimated_price >= ?",min_price]) if min_price.present?
		posts = posts.where(["estimated_price <= ?",max_price]) if max_price.present?
		
		return posts
	end
end