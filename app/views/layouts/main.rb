require "sinatra"
 
	get "/home" do
		erb :home
	end

	get '/sup' do
		@q = params[:hi]
    erb :sup
	end

  get '/form' do
    erb :form
  end

  post '/sign-in' do
    puts "my params are" + params.inspect
  end

	get "/education" do
		erb :education
	end

	get "/field_work" do
		erb :field_work
	end

	get "/additional_info" do
		erb :additional_info
	end