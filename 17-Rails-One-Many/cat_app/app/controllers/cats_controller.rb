class CatsController < ApplicationController
    before_action :current_cat, only: [:show, :edit, :update, :destroy]

    def index 
        @cats = Cat.all 
    end

    def show 
        # @cat = Cat.find(params[:id])
        # byebug
    end
    #  create and update 
    def create
        # byebug
        if !params[:cat][:owner].empty?
            # create an owner 
            # THEN associate to cat
            new_owner = Owner.create(name: params[:cat][:owner])
            new_cat = Cat.create(cat_params)
            new_cat.owner = new_owner
            new_cat.save
        else
            new_cat = Cat.create(cat_params)
        end
    
        # posting some data
        redirect_to cat_path(new_cat)
    end

    def new
        @cat = Cat.new
        @owners = Owner.all
    end
    
    def edit    
        @owners = Owner.all
        # @cat = Cat.find(params[:id])
        # byebug
    end

    def update 
        # patching some data
        # @cat = Cat.find(params[:id])
        @cat.update(cat_params)

        # byebug
        redirect_to cat_path(@cat)
    end

    def destroy 
        # byebug
        # find cat 
        # cat = Cat.find(params[:id])
        # destroy cat
        @cat.destroy
        # go back to other cats 
        redirect_to cats_path
    end

    def current_cat
        @cat = Cat.find(params[:id])
    end

    def cat_params
        params.require(:cat).permit(:name, :breed, :age, :owner_id)
    end
end
