Rails.application.routes.draw do

  root 'tech#index'

  get 'show', to: 'tech#show'

  get '/tech/:id', to: "tech#show", as:"tech"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
