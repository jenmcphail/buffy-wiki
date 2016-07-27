class Character < ActiveRecord::Base
	validates :name, uniqueness: true, case_sensitive: false

	def self.search(query)
  		where("name LIKE ?", "%#{query.capitalize}%") 
	end
end

#ajax post -> hits route for upvoting (or downvoting) -> sends to to database -> grabs new number form database -> upon success -> ajax function -> posts new number on front end