class PerformersController < ApplicationController
    set :views, "app/views/performers"
    set :method_override, true

    # RESTful conventions 
    # index - /plural resource
    get '/performers' do 
        @performers = Performer.all
        erb :index
    end

    # create a new performer requires 2 steps 
    # get the form (new performer STEP 1)
    get '/performers/new' do
        # we are getting the form here
        # no data JUST yet
        erb :new
    end

    # show page
    get '/performers/:id' do 
        @performer = Performer.find(params[:id])
        erb :show
    end


    # on submitting the form, POST the data to server
    # (new performer STEP 2)
    post '/performers' do 
        # binding.pry
        performer = Performer.create(name: params[:name])
        redirect '/performers'
    end

    # editting is 2 steps 
    # get particular performer(STEP1)
    get '/performers/:id/edit' do
        @performer = Performer.find(params[:id])
        @venues = Venue.all
        erb :edit
    end

    # patch(STEP2)
    patch '/performers/:id' do 
        @performer = Performer.find(params[:id])
        # binding.pry

        @performer.update(name: params[:name])
        # if venues are selected
        if params[:venue]
            params[:venue].each do | v |
                Concert.create(name: "new concert", venue_id: v, performer_id: @performer.id )
            end
        end

        redirect "/performers/#{@performer.id}"

    end
end