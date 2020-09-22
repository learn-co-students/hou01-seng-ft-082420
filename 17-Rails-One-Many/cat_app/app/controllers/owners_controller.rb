class OwnersController < ApplicationController

    def index
        @owners = Owner.all 
        # byebug
    end

    def show
        @owner = Owner.find(params[:id])
        # byebug
    end
end
