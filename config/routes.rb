Rails.application.routes.draw do

  get '/', to: 'contacts#index'
  get '/contacts', to: 'contacts#index'
  # get '/phones', to: 'contacts#phone_index'
  get '/contacts/new', to: 'contacts#new'
  get '/contacts/:id', to: 'contacts#show'
  post '/contacts', to: 'contacts#create'

  get '/signup', to: 'users#new'
  post '/users', to: 'users#create'

  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  get '/logout', to: 'sessions#destroy'


end
