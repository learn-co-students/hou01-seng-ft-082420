class CharactersController < ApplicationController

    def index 
        @characters = Character.all
    end

    def show
        @character = Character.find(params[:id])
    end

    def new
        @character = Character.new
        @movies = Movie.all
        @actors = Actor.all
    end
    
    def create
        byebug

        new_character = Character.new(char_params)

        if !new_character.valid? #if charcater is NOT valid, meaning the data is wrong 
        # if errors, redirect_to the new form WITH errors available to us for user to see
            # byebug
            flash[:errors] = new_character.errors.full_messages #add errors from model to our flash hash
            redirect_to new_character_path #redirect
        else
            new_character.save #save 
            redirect_to character_path(new_character) #go to show page of THAT character
        end
    end

    def char_params
        params.require(:character).permit(:role_name, :movie_id, :actor_id)
    end

end
