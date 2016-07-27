Rails.application.routes.draw do

  get '/', to: 'contacts#index'
  get '/contacts', to: 'contacts#index'
  get '/phones', to: 'contacts#phone_index'
  get '/contacts/:id', to: 'contacts#show'

end
