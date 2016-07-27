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

	#GETs index page of characters in alphabetical order
	get "/characters" do
		@characters=Character.all.order(name: :asc)
		erb :'characters_index'
	end

	#GETs index page of characters ordered alphabetically by character type
	get "/characters/type" do
		@characters=Character.all.order(character_type: :asc)
		erb :'characters_index'
	end

	get '/characters/search' do
  		@characters = Character.search(params[:query])
  		erb :'characters_index'
	end

	# GETs index page of characters ordered by votes
    get "/characters/votes" do
		@characters=Character.all.order(votes: :desc)
		erb :'characters_index'
	end

	#adds upvote button
	get '/characters/:id/vote' do
    	@characters = Character.find(params[:id])
    	erb :'characters/:id'
  	end

	#POSTs upvote to character
	put "/characters/:id/vote" do
    	@characters = Character.find(params[:id])
    	up = Character.find(params[:id])
    	up.votes += 1
    	up.save
    	redirect '/characters/' + @characters.id.to_s
	end

	#adds downvote button
	get '/characters/:id/downvote' do
    	@characters = Character.find(params[:id])
    	erb :'characters/:id'
  	end

	#POSTs downvote to character
	put "/characters/:id/downvote" do
    	@characters = Character.find(params[:id])
    	down = Character.find(params[:id])
    	down.votes -= 1
    	down.save
    	redirect '/characters/' + @characters.id.to_s
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
		characterparams = params[:character]
		characterparams[:name] = characterparams[:name].split.map(&:capitalize).join(" ")
		@character=Character.new(characterparams)
		if @character.save
			redirect '/characters'
		else
			redirect "/characters/existing"
		end
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