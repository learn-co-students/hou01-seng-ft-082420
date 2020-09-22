class MoviesController < ApplicationController
    
    def index
        @movies = Movie.all
    end
    def show 
        @movie = Movie.find(params[:id])
    end

    def new
        @movie = Movie.new
        @actors = Actor.all
    end

    def create
        # byebug
        @movie = Movie.create(movie_params)

        params[:movie][:actor_ids].reject(&:blank?).each do | id |
            Character.create(movie_id: @movie.id, actor_id: id )
        end
        redirect_to movie_path(@movie)
    end

    def edit 
        @movie = Movie.find(params[:id])
        @actors = Actor.all
    end

    def movie_params
        params.require(:movie).permit(:title, :release_date)
    end
end
