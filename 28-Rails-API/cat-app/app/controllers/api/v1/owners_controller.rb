class Api::V1::OwnersController < ApplicationController

    def index
        owners = Owner.all
        render json: owners, only:[:name, :age], include: { kittens: { only: [:name, :age, :breed] } }
        # render json: owners, include: :kittens  <<< this is the skeleton
    end


end
