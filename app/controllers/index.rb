get '/' do
	@movies = Tmdb::Movie.popular
	erb :index
end

get '/movies/:id' do
	@movie = Tmdb::Movie.detail(params[:id])
	ap @movie
	ap @movie["title"]
	erb :show
end