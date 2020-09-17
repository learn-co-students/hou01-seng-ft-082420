class ApplicationController < Sinatra::Base

    set :views, "app/views"
    set :method_override, true

    get '/' do
        "Hello World"
    end

    get '/something_else/:test' do 
        "Now we're doing something else #{params[:test]}"
    end

    get '/welcome' do
        erb :welcome
    end


end
