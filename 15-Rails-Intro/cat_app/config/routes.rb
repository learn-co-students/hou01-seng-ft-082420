Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get '/cats', to: 'cats#index'

  # we need a show page
  get '/cats/:id', to: 'cats#show'
end
