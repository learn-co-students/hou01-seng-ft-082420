class ActorsController < ApplicationController

    def index
        @actors = Actor.all
    end

    def show
        @actor = Actor.find(params[:id])
    end

    def new
    end

    def create
    end

    def edit 
    end

    def update
    end
end
