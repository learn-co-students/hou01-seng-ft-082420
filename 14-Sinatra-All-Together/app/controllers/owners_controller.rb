class OwnersController < Sinatra::Base
    set :views, "app/views/owners"
    
    # method override is to make it possible for us to patch or delete 
    set :method_override, true

    # index page to show all owners
    get '/owners' do 
        @owners = Owner.all 
        erb :index
    end


    # create a new owner
    # first we get a form
    # then submit form to server 
    get '/owners/new' do
        erb :new
    end


    # show page to view ONE specific owner
    get '/owners/:id' do 
        @owner = Owner.find(params[:id])
        erb :show
    end

    post '/owners' do 
        # binding.pry
        owner = Owner.create(params)
        redirect '/owners/#{owner.id}'
    end

    get '/owners/:id/edit' do 
        @owner = Owner.find(params[:id])
        erb :edit
    end

    patch '/owners/:id' do 
        # find owner
        owner = Owner.find(params[:id])
        # and update 
        # binding.pry
        owner.update(name: params[:name])
        # redirect to THAT show page
        redirect "/owners/#{owner.id}"
    end



end