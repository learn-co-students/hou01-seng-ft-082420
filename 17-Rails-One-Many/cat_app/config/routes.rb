Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get '/cats', to: 'cats#index'

  get '/cats/new', to: 'cats#new'
  # we need a show page
  get '/cats/:id', to: 'cats#show', as: 'cat'

  post '/cats', to: 'cats#create'

  # get '/someotherpage', to: 'controller#action', as: 'someotherprefix'

  get '/cats/:id/edit', to: 'cats#edit'

  patch '/cats/:id', to: 'cats#update'

  delete '/cats/:id', to: 'cats#destroy'


  # resources :cats, only: [:index, :show, :create, :update]

  resources :owners, only: [:index, :show]

  
end
