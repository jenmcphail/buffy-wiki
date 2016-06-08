class BuffyWiki < Sinatra::Base
   register Sinatra::Flash

	#GETs layout page
	get "/" do
	  redirect '/home'
	end

	#GETs homepage (homepage directs to other pages)
	get "/home" do
	  erb :'home'
	end

	#GETs index page of characters
	get "/characters" do
		@characters=Character.all.order(name: :asc)
		erb :'characters_index'
		#order characters alphabetically
		#in characters_index create a form w/ options and ajax functionality that allows users to order the page based on name, season(s), type, and popularity - automatically submits
		#possible to create multiple layouts in one page with erb?
	end

	#GETs form page for new character
	get "/characters/new" do
		erb :'new'
	end

	#GETs error page after user trys to input character twice.
	get "/characters/existing" do
		erb :'exists'
	end

	#POSTS create a new character, adds to characters page
	post "/characters" do
		@character=Character.new(params[:character])
		if @character.save
			redirect '/characters'
		else
			redirect "/characters/existing"
		end
	end

	#GETs search form for character
	#doesn't work - search bar?
	get "/characters/search" do
		erb :'search'
	end

	#GETs individual character page
	get "/characters/:id" do
		@character=Character.find(params[:id])
		erb :'character'
		#allow users to vote on characters using ajax functions. These votes will populate the popularity page.
	end

	#GETs the update form for a character
	get "/characters/:id/edit" do
		@character=Character.find(params[:id])
		erb :'update'
	end

	#UPDATEs an existing character
	put "/characters/:id" do
		@character=Character.find(params[:id])
		@character.update_attributes(params[:character])
		@character.save
		redirect '/characters/' + @character.id.to_s
		
	end

	#DELETEs a specific character
	delete "/characters/:id" do
		@character=Character.find(params[:id])
		@character.destroy
		redirect '/characters'
	end

end