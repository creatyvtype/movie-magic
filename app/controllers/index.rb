get '/' do
	@movies = Tmdb::Movie.popular
	ap @movies
	ap Tmdb::Movie.images(@movies.first.id)
	erb :index
end

get '/movies/:id' do
	@movie = Tmdb::Movie.detail(params[:id])
	erb :show
end