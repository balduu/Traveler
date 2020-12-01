class Search < ApplicationRecord

	
	def search_travel
		travels = Travel.all
		
		travels = travels.where(["title LIKE ?","%#{keywords}%"]) if keywords.present?
		travels = travels.where(["writer LIKE ?",writer]) if writer.present?
		travels = travels.where(["location LIKE ?",location]) if location.present?
		travels = travels.where(["estimated_price >= ?",min_price]) if min_price.present?
		travels = travels.where(["estimated_price <= ?",max_price]) if max_price.present?
		
		return travels
	end
end
