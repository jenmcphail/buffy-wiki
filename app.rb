# A Model, our data
# A View, for rendering HTML pages
# A Controller, for connecting views & models
# A Route, to tell our app which URL to listen for

class BuffyWiki < Sinatra::Base

	get "/" do
		erb :'layout'
	end

	get "/home" do
	  erb :'home'
	end

	get "/characters" do
  		@characters = ["Buffy Summers", "Xander Harris", "Willow Rosenberg", "Cordelia Chase", "Rupert Giles", "Joyce Summers", "Dawn Summers", "Spike", "Angel"]
		erb :'characters'
	end

	get "/new-character" do
		erb :'new'
	end
end