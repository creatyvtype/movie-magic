get '/' do
	@movies = Tmdb::Movie.popular
	ap @movies
	erb :index
end