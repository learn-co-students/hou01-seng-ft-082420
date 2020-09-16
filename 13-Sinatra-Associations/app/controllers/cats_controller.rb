class CatsController < Sinatra::Base
    set :views, "app/views/cats"
    set :method_override, true

        # GET all cats => INDEX.erb '/cats'
        get '/cats' do 
            @cats = Cat.all
            erb :index
        end
    
        get '/cats/new' do 
            erb :new
        end
    
        # we want a specific cat
        # GET a specific cat => SHOW.erb '/cat' 
        get '/cats/:id' do 
            # params[:id]
            # @cat = Cat.where(id: params[:id]) #returns an array with one instance
            @cat = Cat.find(params[:id])
            # binding.pry
            erb :show
        end
    
        # make a new cat 
        # Create 
        # POST 
        post '/cats' do 
            # new_cat  = Cat.new(name: params[:name], breed: params[:breed])
            # new_cat.save
            new_cat = Cat.create(params)
            # redirect to cats/id where cat we want is new_cat.id
            redirect "/cats/#{new_cat.id}"
        end
    
        # edit a cat 
        # 2 steps
        # get form to update 
        # send data to server to update 
    
        # edit step 1
        get '/cats/:id/edit' do
            @cat = Cat.find(params[:id])
            @owners = Owner.all 
            erb :edit
        end
    
        patch '/cats/:id' do 
            binding.pry
            cat = Cat.find(params[:id])
            # cat.update(name: params[:cat][:name], breed: params[:cat][:breed], owner_id: params[:cat][:owner_id])
            cat.update(params[:cat])
            redirect "/cats/#{cat.id}"
    
        end
    
    
        delete '/cats/:id' do 
            cat = Cat.find(params[:id])
            cat.destroy
            redirect "/cats"
        end

end