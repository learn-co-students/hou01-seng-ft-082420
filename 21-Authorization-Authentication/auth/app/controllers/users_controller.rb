class UsersController < ApplicationController
before_action :authenticated?, only: [:index, :show]

    def index 
        @users = User.all
    end

    def create 
        # in creating an account
        # we could add validation (which you should) 
        # emails should be unique
        # passwords should be longer than 8 characters (the standard is 12 charaacters)
        # post lecture: add validation here
        # we are comparing passwords straight from params, can we put this logic somewhere else? 
        # feel free to ask if you do not know where it could go
        new_user = User.new(user_params)
        #if validations pass and user is saved successfully 
        # AND if password MATCHES password confirmation 
        if new_user.save && params[:password] == params[:password_confirmation] 
            # save THIS id in session
            session[:id] = new_user.id
            redirect_to user_path(new_user)
        else
            # else we DIDNT save our user, something went wrong
            # show those messages and redirect them to the form to try again
            flash[:error] = new_user.errors.full_messages
            redirect_to new_user_path
        end

    end


    def authenticated?
        # check our session hash if user exists
        if session[:id] != nil 
            @user = User.find(session[:id])
        # if no user, take them to sign in/sign up
        else
            redirect_to '/sign_in'
        end
    end

    def show
        @user = User.find(params[:id])
    end

    private 

    def user_params
        params.require(:user).permit(:name, :email, :age, :password, :password_confirmation)
    end

end
