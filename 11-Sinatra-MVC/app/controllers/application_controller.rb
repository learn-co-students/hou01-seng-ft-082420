class ApplicationController < Sinatra::Base

    set :views, "app/views"

    get '/' do
        "Hello World"
    end

    get '/something_else/:test' do 
        "Now we're doing something else #{params[:test]}"
    end

    get '/welcome' do
        erb :welcome
    end

    get '/cats' do 
        @cats = Cat.all
        erb :index
    end

    # we want a specific cat 
    get '/cats/:id' do 
        # params[:id]
        # @cat = Cat.where(id: params[:id]) #returns an array with one instance
        @cat = Cat.find(params[:id])
        # binding.pry
        erb :show
    end

    

end
