Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :characters, only:[:index, :show]
  resources :movies
  resources :actors

end
